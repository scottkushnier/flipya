"use strict";

const express = require("express");
// let cors = require("cors");
//  const morgan = require("morgan");

const wordsetRoutes = require("./routes/wordsets");
const wordRoutes = require("./routes/words");
const emailRoutes = require("./routes/emails");
const emailapiRoutes = require("./routes/email-api"); // API for sending email out
const userRoutes = require("./routes/users");
const { NotFoundError } = require("./expressError");

const Users = require("./models/users");

const app = express();

app.use(express.json());
// app.use(cors());
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
    res.send(`Hi there, ${u.email}!`);
    // res.send(`Hi there, ${name}!`);
  });
});

/** Handle 404 errors -- this matches everything */
app.use(function (req, res, next) {
  return next(new NotFoundError());
});

/** Generic error handler; anything unhandled goes here. */
app.use(function (err, req, res, next) {
  if (process.env.NODE_ENV !== "test") console.error(err.stack);
  const status = err.status || 500;
  const message = err.message;
  return res.status(status).json({
    error: { message, status },
  });
});

module.exports = app;
