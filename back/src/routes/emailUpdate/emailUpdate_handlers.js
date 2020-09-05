const db = require("../../config/conection");
module.exports.emailUpdate = function (req,res){
  const { id, email }= req.body
  db("users")
    .update({ 
    email: email
  }).where("id","=", id)
  .then(data => res.sendStatus(data))
  .catch(err => res.status(400).json("Unable to update email"))
}