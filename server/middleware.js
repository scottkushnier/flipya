// middleware - check Token for protected routes

const jwt = require("jsonwebtoken");
const { JWT_SECRET_KEY } = require("./config");

function getCookie(name, cookieString) {
  if (!cookieString) {
    return null;
  }
  const cookies = cookieString.split(";");
  for (let i = 0; i < cookies.length; i++) {
    let cookie = cookies[i].trim();
    if (cookie.startsWith(name + "=")) {
      return cookie.substring(name.length + 1);
    }
  }
  return null;
}

function getUsernameFromCookie(req) {
  const username = getCookie("username", req.headers.cookie);
  return username;
}

function checkToken(req, res, next) {
  if (process.env.NODE_ENV === "test") {
    // console.log("no token checking during testing...");
    next();
  } else {
    const token = getCookie("token", req.headers.cookie);
    if (!token) {
      return res.json({ msg: "access denied" });
    }
    // console.log("checking token...: ", token);
    if (!jwt.verify(token, JWT_SECRET_KEY)) {
      console.error("bad token:", token);
      return res.json({ msg: "bad token" });
    }
    const userFromJwt = jwt.decode(token).username;
    // console.log("from jwt: ", userFromJwt);
    // console.log("from req (path): ", req.path);
    if (req.params.username && userFromJwt != req.params.username) {
      console.error("wrong username in token:", token);
      console.log("fromJWT: ", userFromJwt);
      console.log("from params: ", req.params.username);
      return res.json({ msg: "wrong username in token" });
    }
    next();
  }
}

module.exports = { checkToken, getUsernameFromCookie };
