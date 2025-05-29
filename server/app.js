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

const path = require("path");

const app = express();

app.use(express.json());
//  app.use(cors());
//  app.use(morgan());

app.use("/api/wordset", wordsetRoutes);
app.use("/api/word", wordRoutes);
app.use("/api/email", emailRoutes);
app.use("/api/email-api", emailapiRoutes);
app.use("/api/users", userRoutes);

// app.use(express.static(path.join(__dirname, "build")));

// prefix all API endpoints with `/api`
// app.get("/api/ping", (req, res) => {
//   res.send("Ok");
// });

// app.post("/api/greet", (req, res) => {
//   const { name } = req.body;
//   Users.find(name).then((u) => {
//     res.send(`Hi there, ${u.email}, ${u.wordset_id}!`);
//     // res.send(`Hi there, ${name}!`);
//   });
// });

// app.get("*", (req, res) => {
//   res.sendFile(path.join(__dirname, "build", "index.html"));
// });

// app.get("*", (req, res) => {
//   res.render("index.html");
// });

app.get("*", (req, res) => {
  res.sendFile(path.join(__dirname, "..", "client", "index.html"));
});

// app.get("/*", function (req, res) {
//   res.sendFile("/home/kushnier/share/springboard/flipya/client/index.html");
// });

module.exports = app;
