const db = require("../../config/conection")
const bcrypt = require("bcrypt")
const saltRounds = 10;
const salt = bcrypt.genSaltSync(saltRounds);

module.exports.login = function(req,res){
  db.select("email", "password")
    .from("users")
    .where("email", "=", req.body.email)
    .then((data) => {
      const isValid = bcrypt.compareSync(req.body.password, data[0].password);
      if (isValid) {
        db.select("*")
          .from("users")
          .where("email", "=", req.body.email)
          .then((user) => {
            console.log(user);
            return res.status(200).json(user[0]);
          })
          .catch((err) => res.status(400).json("Unable to get user"));
      } else {
        return res.status(400).json("Your email and password does not match our records.");
      }
    })
    .catch((err) => res.status(400).json("Wrong credentials"));
}