const express = require("express");

const { BadRequestError } = require("../expressError");
const EmailAPI = require("../models/email-api");

const router = new express.Router();

router.post("/", async function (req, res, next) {
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
