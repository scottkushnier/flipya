const express = require("express");

const EmailAPI = require("../models/email-api");
const jwt = require("jsonwebtoken");
const { JWT_SECRET_KEY } = require("../config");

const router = new express.Router();

router.post("/", async function (req, res, next) {
  // console.log("token: ", req.headers.token);
  if (!jwt.verify(req.headers.token, JWT_SECRET_KEY)) {
    console.error("bad token when trying to send out email");
    return res.json({ msg: "bad token" });
  }
  try {
    // console.log("here trying to send email from flipya server");
    // console.log("req body: ", req.body);
    const ret = EmailAPI.sendEmail(
      req.body.From,
      req.body.To,
      req.body.Subject,
      req.body.TextBody
    );
    console.log("ret from models: ", ret);
    return res.json(ret);
  } catch (err) {
    console.log("err from models: ", err);
    return res.json(err);
  }
});

module.exports = router;
