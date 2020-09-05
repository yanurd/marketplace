const bodyParser = require("body-parser");
const express = require("express");
const cors = require("cors");
const bcrypt = require("bcrypt");
const saltRounds = 10;
const db = require("./src/config/conection");
const salt = bcrypt.genSaltSync(saltRounds);
const app = express();
app.use(cors());

require("dotenv").config();

app.use(bodyParser.urlencoded({ extended: false }));
app.use(bodyParser.json({ limit: "1mb" }));
app.disable("x-powered-by");

const register = require("./src/routes/registeruser")
const login = require("./src/routes/login")
const cart = require("./src/routes/cart")
const emailUpdate = require("./src/routes/emailUpdate")
const passwordUpdate = require("./src/routes/passwordUpdate")
app.post("/register", register.register);
app.post("/login", login.login);
app.post("/cart", cart.cart);
app.post("/emailUpdate", emailUpdate.emailUpdate);
app.post("/passwordUpdate", passwordUpdate.passwordUpdate);

app.listen(5000, () => {
  console.log("http://localhost:5000");
});
