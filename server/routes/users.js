"use strict";

const express = require("express");

const { BadRequestError } = require("../expressError");
const Users = require("../models/users");
const { checkToken } = require("../middleware.js");

const router = new express.Router();

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
    // console.log("user after reg: ", user);
    res.cookie("username", req.body.username);
    res.cookie("token", user.token);
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
      res.cookie("username", user.username);
      res.cookie("token", user.token);
      // console.log("user: ", user);
      return res.json({ user });
    }
  } catch (err) {
    return next(err);
  }
});

router.post("/logout", async function (req, res, next) {
  // console.log("here in logout route");
  // delete user cookies
  res.cookie("username", "", { maxAge: 0 });
  res.cookie("token", "", { maxAge: 0 });
  return res.json(null);
});

function getCookie(name, cookieString) {
  const cookies = cookieString.split(";");
  for (let i = 0; i < cookies.length; i++) {
    let cookie = cookies[i].trim();
    if (cookie.startsWith(name + "=")) {
      return cookie.substring(name.length + 1);
    }
  }
  return null;
}

router.post("/restore-session", async function (req, res, next) {
  // console.log("here in restore session");
  try {
    const user = await Users.restoreSession(req.body.username);
    if (typeof user == "string") {
      // string means error or info message
      return res.json(user);
    } else {
      user.token = getCookie("token", req.headers.cookie);
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
