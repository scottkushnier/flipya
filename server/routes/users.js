"use strict";

const express = require("express");

const { BadRequestError } = require("../expressError");
const Users = require("../models/users");
const checkToken = require("../middleware.js");

const router = new express.Router();

// list of all usernames
// router.get("/", async function (req, res, next) {
//   try {
//     const users = await Users.findAll();
//     return res.json({ users });
//   } catch (err) {
//     return next(err);
//   }
// });

// get details for a particular user
router.get("/:username", async function (req, res, next) {
  try {
    const user = await Users.find(req.params.username);
    if (user) {
      return res.json({ user });
    } else {
      return res.json("no such user");
    }
  } catch (err) {
    return next(err);
  }
});

router.post("/register", async function (req, res, next) {
  try {
    const user = await Users.register(req.body.username, req.body.password);
    return res.json(user);
  } catch (err) {
    return next(err);
  }
});

router.post("/login", async function (req, res, next) {
  // console.log("here in login route");
  try {
    // console.log("here in try");
    const user = await Users.login(req.body.username, req.body.password);
    if (typeof user == "string") {
      // string means error or info message
      return res.json(user);
    } else {
      return res.json({ user });
    }
  } catch (err) {
    return next(err);
  }
});

// routes to update user profiles based on options UI

router.post("/:username/email", checkToken, async function (req, res, next) {
  // console.log("here in update-email route");
  try {
    const result = await Users.updateEmail(req.params.username, req.body.email);
    return res.json(result);
  } catch (err) {
    return next(err);
  }
});

router.post("/:username/setsize", checkToken, async function (req, res, next) {
  // console.log(
  //   "here in update-set-size route for ",
  //   req.params.username,
  //   " to ",
  //   req.body.setsize
  // );
  try {
    const result = await Users.updateSetSize(
      req.params.username,
      req.body.setsize
    );
    return res.json(result);
  } catch (err) {
    return next(err);
  }
});

router.post(
  "/:username/wordsetid",
  checkToken,
  async function (req, res, next) {
    // console.log(
    //   "here in update-wordset-id route for ",
    //   req.params.username,
    //   " to ",
    //   req.body.id
    // );
    try {
      const result = await Users.updateWordSetId(
        req.params.username,
        req.body.id
      );
      return res.json(result);
    } catch (err) {
      return next(err);
    }
  }
);

module.exports = router;
