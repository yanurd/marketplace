const db = require("../../config/conection")
module.exports.cart = function(req, res){
  const { item, precio, cantidad } = req.body;
  db.insert({
    idUser: req.body.idUser,
    item: item,
    precio: precio,
    cantidad: cantidad
    })
    .into("cart")
    .then(data => res.send("Your items have been purchased!"))
    .catch(err => res.status(400).json("Unable to purchase items"))
  }