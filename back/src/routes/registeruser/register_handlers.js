const db = require("../../config/conection")
const bcrypt = require("bcrypt")
const saltRounds = 10;
const salt = bcrypt.genSaltSync(saltRounds);

module.exports.register = function(req,res){
  const { name, lastname, email, password } = req.body;
  const hash = bcrypt.hashSync(password, salt);
  db("users")
    .insert({
      name: name,
      lastname: lastname,
      email: email,
      password: hash,
    })
    .then((response) => {
      res.json(response);
      console.log(response);
    })
    .catch((error) =>
      res.status(400).json("Hubo un error al realizar el registro")
    );
}