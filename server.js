const bodyParser = require("body-parser");
const express = require("express");
const knex = require("knex");
const cors = require("cors");
const bcrypt = require('bcrypt');
const saltRounds = 10;
const salt = bcrypt.genSaltSync(saltRounds)
const app = express();
app.use(cors())
const db = knex({
  client: "mysql",
  connection: {
    host: "127.0.0.1",
    user: "root",
    password: "",
    database: "marketplace",
  },
});
require("dotenv").config();

app.use(bodyParser.urlencoded({ extended: false }));
app.use(bodyParser.json({ limit: "1mb" }));
app.disable("x-powered-by");

app.post("/register", function (req, res) {
  const { name, lastname, email, password } = req.body;
  const hash = bcrypt.hashSync(password, salt)
  // db.transaction(trx => {
  //   trx.insert({
  //     name:name,
  //     lastname:lastname,
  //     email:email,
  //     password: hash
  //   })
  // })

  db("users")
    .insert({
      name: name,
      lastname: lastname,
      email: email,
      password: hash
    })
    .then(response => {
      res.json(response)
      console.log(response)
    })
    .catch(error => res.status(400).json("Hubo un error al realizar el registro"));
});

app.post("/login", function (req,res){
  db.select("email", "password")
    .from("users")
    .where("email", "=", req.body.email)
    .then(data => {
      const isValid = bcrypt.compareSync(req.body.password, data[0].password)
      console.log(isValid)
      if (isValid){
        return db.select("*")
          .from("users")
          .where("email","=",email)
          .then(user => {
            console.log(user)
            res.json(user[0])
          })
          .catch(err => res.status(400).json("Unable to get user"))
      }else{
        res.status(400).json("Wrong credentials")
      }
    })
    .catch(err => res.status(400).json("Wrong Credentials"))
})
// db.select("*")
//   .from("users")
//   .then((data) => console.log(data));

app.listen(5000, () => {
  console.log("http://localhost:5000");
});
