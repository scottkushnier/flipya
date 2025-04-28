import { useState, useEffect } from "react";
import FlipyaDB from "./FlipyaDB";

let userList = ["foo"];

function usernameIsRegistered(username) {
  const ret = userList.includes(username);
  return ret;
}

function Login({ enterFn }) {
  const [username, setUsername] = useState("");
  const [password, setPassword] = useState("");
  const [passwordError, setPasswordError] = useState(false);
  const [buttonType, setButtonType] = useState("none"); // login or register, depending on if username exists
  const [pwEyeOpen, setPwEyeOpen] = useState(false);

  // useEffect(() => {
  //   FlipyaDB.getUsers().then((ret) => {
  //     // console.log("users: ", ret);
  //     userList = ret.users.map((user) => user.username);
  //     // console.log("userlist: ", userList);
  //   });
  // }, []);

  const handleUsernameEdit = (e) => {
    // console.log("username edit");
    setUsername(e.target.value);
    if (e.target.value !== "") {
      if (usernameIsRegistered(e.target.value)) {
        setButtonType("login");
      } else {
        setButtonType("register");
      }
    } else {
      setButtonType("none");
    }
    setPasswordError(false);
  };

  const handlePasswordEdit = (e) => {
    // console.log("password edit: ", e.target.value);
    setPassword(e.target.value);
    setPasswordError(false);
  };

  const handleButton = async (e) => {
    e.preventDefault();
    if (buttonType === "login") {
      const loginRes = await FlipyaDB.login(username, password);
      // console.log("login result: ", loginRes);
      if (typeof loginRes == "object") {
        // if got profile back, else error
        enterFn(username);
      } else {
        setPasswordError(true);
      }
    } else if (buttonType === "register") {
      // console.log("register");
      if (password === "") {
        setPasswordError(true);
      } else {
        await FlipyaDB.register(username, password);
        enterFn(username);
      }
    }
  };

  const clickEye = (e) => {
    e.preventDefault();
    if (e.key === "Enter") {
      e.stopPropogation();
      // console.log("enter on button");
    }
    // console.log("click eye");
    setPwEyeOpen(() => !pwEyeOpen);
    // console.log(pwEyeOpen);
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
            data-testid="username"
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
            type={pwEyeOpen ? "input" : "password"}
            id="password"
            data-testid="password"
            value={password}
            onChange={handlePasswordEdit}
            autoComplete="off"
            style={{ backgroundColor: passwordError ? "pink" : "white" }}
          />
          <button
            type="button"
            tabIndex={-1}
            className={
              pwEyeOpen
                ? "password-eye password-eye-open"
                : "password-eye password-eye-closed"
            }
            onKeyPress={(e) => {
              e.preventDefault();
            }}
            onClick={clickEye}
          ></button>
        </div>
        {buttonType === "login" ? (
          <button
            data-testid="login-button"
            className="login-button"
            onClick={handleButton}
          >
            Login
          </button>
        ) : null}
        {buttonType === "register" ? (
          <button
            className="login-button register-button"
            onClick={handleButton}
          >
            Register
          </button>
        ) : null}
      </form>
      {passwordError ? (
        buttonType === "login" ? (
          <p className="login-message"> * Bad Password * </p>
        ) : (
          <p className="login-message">
            {" "}
            * Need to enter a password to register *{" "}
          </p>
        )
      ) : null}
    </>
  );
}

export default Login;
