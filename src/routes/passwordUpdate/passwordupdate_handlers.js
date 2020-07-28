const db = require("../../config/conection")
const bcrypt = require("bcrypt")
const saltRounds = 10;
const salt = bcrypt.genSaltSync(saltRounds);

module.exports.passwordUpdate = function(req,res){
  const { id, password } = req.body
  const hash = bcrypt.hashSync(password, salt);
  db("users")
    .update({
      password: hash
    })
    .where("id","=",id)
    .then(data =>  {
      return res.status(200).json(user[0])
    })
    .catch(err => {
      return res.status(400).json("Unable to update password")
    })
}