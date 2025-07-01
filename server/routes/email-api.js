const express = require("express");

const EmailAPI = require("../models/email-api");

const checkToken = require("../middleware.js");

const router = new express.Router();

router.post("/", checkToken, async function (req, res, next) {
  // console.log("token: ", req.headers.token);
  try {
    // console.log("here trying to send email from flipya server");
    // console.log("req body: ", req.body);
    const ret = EmailAPI.sendEmail(
      req.body.From,
      req.body.To,
      req.body.Subject,
      req.body.TextBody
    );
    // console.log("ret from models: ", ret);
    return res.json(ret);
  } catch (err) {
    // console.log("err from models: ", err);
    return res.json(err);
  }
});

module.exports = router;
