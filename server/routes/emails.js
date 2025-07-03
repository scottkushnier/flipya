"use strict";

const express = require("express");

const Emails = require("../models/emails");

const router = new express.Router();

const { checkToken, getUsernameFromCookie } = require("../middleware.js");

//////////////////////////////////////////////////////////////////////////

// get list of all email addresses for -username-
router.get("/list", checkToken, async function (req, res, next) {
  const username = getUsernameFromCookie(req);
  // console.log("username from cookie: ", username);
  try {
    // console.log("all emails req h: ", req.headers);
    // console.log("expecting token: ", DB_TOKEN);
    const emails = await Emails.findAll(username);
    return res.json({ emails });
  } catch (err) {
    return next(err);
  }
});

// get details for particular email address
router.post("/", checkToken, async function (req, res, next) {
  try {
    // console.log("need details on: ", req.body.email);
    const username = getUsernameFromCookie(req);
    const email = await Emails.find(req.body.email, username);
    return res.json({ email });
  } catch (err) {
    return next(err);
  }
});

// add new email to DB & save random key too
router.post("/add", checkToken, async function (req, res, next) {
  try {
    // console.log("new email: ", req.params.email, req.params.key);
    const username = getUsernameFromCookie(req);
    const emails = await Emails.addEmail(req.body.email, username);
    return res.json({ msg: "added" });
  } catch (err) {
    return next(err);
  }
});

///////////////////////////

router.post("/sendverify", async function (req, res, next) {
  // console.log("got send verify request for: ", req.body.email);
  const username = getUsernameFromCookie(req);
  const sendResult = await Emails.sendVerify(req.body.email, username);
  return res.json(sendResult);
});

router.get("/tryverify/:email/:key", async function (req, res, next) {
  try {
    const verdict = await Emails.tryVerifyEmail(
      req.params.email,
      req.params.key
    );
    return res.json(verdict);
  } catch (err) {
    return next(err);
  }
});

module.exports = router;
