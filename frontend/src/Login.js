import bcrypt from "bcryptjs";

import { useState } from "react";

const PW_HASH = process.env.REACT_APP_PW_HASH;

function Login({ enterFn }) {
  const [username, setUsername] = useState("");
  const [password, setPassword] = useState("");
  const [badPassword, setBadPassword] = useState(false);

  const handleUsernameEdit = (e) => {
    // console.log("username edit");
    setUsername(e.target.value);
  };

  const handlePasswordEdit = (e) => {
    // console.log("password edit: ", e.target.value);
    setPassword(e.target.value);
    setBadPassword(false);
  };

  const handleButton = (e) => {
    e.preventDefault();
    // console.log("try password: ", password);
    // bcrypt.genSalt(10).then((salt) => {
    //   bcrypt.hash(password, salt).then((hash) => {
    //     console.log("hash: ", encodeURIComponent(hash));
    //   });
    // });
    bcrypt.compare(password, decodeURIComponent(PW_HASH)).then((result) => {
      if (result) {
        // console.log("PASS");
        enterFn();
      } else {
        // console.log("FAIL");
        setBadPassword(true);
      }
    });
  };

  return (
    <>
      <h2 className="title"> FLIP YA! </h2>
      <form>
        <div className="username-row">
          <label className="username-label" htmlFor="username">
            Username:
          </label>
          <input
            className="username-input"
            type="input"
            id="username"
            value={username}
            onChange={handleUsernameEdit}
            autoComplete="off"
          />
        </div>
        <div>
          <label className="password-label" htmlFor="username">
            Password:
          </label>
          <input
            className="password-input"
            type="password"
            id="password"
            data-testid="password"
            value={password}
            onChange={handlePasswordEdit}
            autoComplete="off"
            style={{ backgroundColor: badPassword ? "pink" : "white" }}
          />
        </div>
        <button
          data-testid="login-button"
          className="login-button"
          onClick={handleButton}
        >
          Login
        </button>
      </form>
    </>
  );
}

export default Login;
