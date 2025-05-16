// middleware - check Token for protected routes

const jwt = require("jsonwebtoken");
const { JWT_SECRET_KEY } = require("./config");

function checkToken(req, res, next) {
  if (process.env.NODE_ENV === "test") {
    // console.log("no token checking during testing...");
    next();
  } else {
    // console.log("checking token...");
    if (!jwt.verify(req.headers.token, JWT_SECRET_KEY)) {
      console.error("bad token:", req.headers.token);
      return res.json({ msg: "bad token" });
    }
    next();
  }
}

module.exports = checkToken;
