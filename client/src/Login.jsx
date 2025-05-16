import { useState, useEffect } from "react";
import FlipyaDB from "./FlipyaDB";

function Login({ enterFn }) {
  const [username, setUsername] = useState("");
  const [password, setPassword] = useState("");
  const [loginError, setLoginError] = useState(false);
  const [errorMessage, setErrorMessage] = useState("");
  const [buttonType, setButtonType] = useState("register"); // login or register, depending on if username exists
  const [pwEyeOpen, setPwEyeOpen] = useState(false);

  async function sleep(delay) {
    return new Promise((res) => {
      setTimeout(() => res(), delay);
    });
  }

  async function usernameIsRegistered(username) {
    if (/^\s*$/.test(username)) {
      return false;
    }
    const ret = await FlipyaDB.getUser(username);
    // console.log("reg: ", username, ret);
    await sleep(200); // delay for security reasons - put brakes on robots searching for valid usernames
    return typeof ret == "object";
  }

  const handleUsernameEdit = async (e) => {
    // console.log("username edit");
    setUsername(e.target.value);
    if (e.target.value !== "") {
      if (await usernameIsRegistered(e.target.value)) {
        setButtonType("login");
      } else {
        setButtonType("register");
      }
    } else {
      setButtonType("register");
    }
    setLoginError(false);
  };

  const handlePasswordEdit = (e) => {
    // console.log("password edit: ", e.target.value);
    setPassword(e.target.value);
    setLoginError(false);
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
        setLoginError(true);
        setErrorMessage("Bad Password");
      }
    } else if (buttonType === "register") {
      // console.log("register");
      if (/^\s*$/.test(username)) {
        setLoginError(true);
        setErrorMessage("Username can't be blank");
      } else if (/^\s*$/.test(password)) {
        setLoginError(true);
        setErrorMessage("Password can't be blank");
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
          <span>
            <label className="password-label" htmlFor="username">
              Password:
            </label>
          </span>
          <span>
            <input
              className="password-input"
              type={pwEyeOpen ? "input" : "password"}
              id="password"
              data-testid="password"
              value={password}
              onChange={handlePasswordEdit}
              autoComplete="off"
              style={{ backgroundColor: loginError ? "pink" : "white" }}
            />
          </span>
          <span>
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
          </span>
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
      {loginError ? (
        <p className="login-message"> * {errorMessage} * </p>
      ) : null}
    </>
  );
}

export default Login;
