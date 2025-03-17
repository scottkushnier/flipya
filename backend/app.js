"use strict";

const express = require("express");
let cors = require("cors");

const wordsetRoutes = require("./routes/wordsets");
const wordRoutes = require("./routes/words");
const emailRoutes = require("./routes/emails");
const emailapiRoutes = require("./routes/email-api"); // API for sending email out
const { NotFoundError } = require("./expressError");

const app = express();

app.use(express.json());
app.use(cors());

app.use("/wordset", wordsetRoutes);
app.use("/word", wordRoutes);
app.use("/email", emailRoutes);
app.use("/email-api", emailapiRoutes);

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
