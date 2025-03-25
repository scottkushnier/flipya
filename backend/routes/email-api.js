const express = require("express");

const { BadRequestError } = require("../expressError");
const EmailAPI = require("../models/email-api");
const { DB_TOKEN } = require("../config.js");

const router = new express.Router();

router.post("/", async function (req, res, next) {
  // console.log("DB TOKEN: ", DB_TOKEN);
  // console.log("token: ", req.headers.token);
  if (req.headers.token !== DB_TOKEN) {
    console.error("bad token when trying to send out email");
    return res.json({});
  }
  try {
    // console.log("here trying to send email from flipya server");
    // console.log("req body: ", req.body);
    EmailAPI.sendEmail(
      req.body.From,
      req.body.To,
      req.body.Subject,
      req.body.TextBody
    );
  } catch (err) {
    return next(err);
  }
});

module.exports = router;
