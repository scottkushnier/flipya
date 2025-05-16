"use strict";

const express = require("express");
// let cors = require("cors");
//  const morgan = require("morgan");

const wordsetRoutes = require("./routes/wordsets");
const wordRoutes = require("./routes/words");
const emailRoutes = require("./routes/emails");
const emailapiRoutes = require("./routes/email-api"); // API for sending email out
const userRoutes = require("./routes/users");
// const { NotFoundError } = require("./expressError");

const Users = require("./models/users");

const app = express();

app.use(express.json());
//  app.use(cors());
//  app.use(morgan());

app.use("/wordset", wordsetRoutes);
app.use("/word", wordRoutes);
app.use("/email", emailRoutes);
app.use("/email-api", emailapiRoutes);
app.use("/users", userRoutes);

// prefix all API endpoints with `/api`
app.get("/api/ping", (req, res) => {
  res.send("Ok");
});

app.post("/api/greet", (req, res) => {
  const { name } = req.body;
  Users.find(name).then((u) => {
    res.send(`Hi there, ${u.email}, ${u.wordset_id}!`);
    // res.send(`Hi there, ${name}!`);
  });
});

module.exports = app;
