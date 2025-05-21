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
    const userFromJwt = jwt.decode(req.headers.token).username;
    console.log("from jwt: ", userFromJwt);
    console.log("from req (path): ", req.path);
    if (req.params.username && userFromJwt != req.params.username) {
      console.error("wrong username in token:", req.headers.token);
      return res.json({ msg: "wrong username in token" });
    }
    next();
  }
}

module.exports = checkToken;
