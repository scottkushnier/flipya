import { useState, useEffect, useRef } from "react";
import { useNavigate } from "react-router-dom";
import FlipyaDB from "./FlipyaDB";
import { saveUser, saveUserField, retrieveUserField } from "./localStorage";
import Navbar from "./Navbar";

const SMART_BUTTON = false;

function Login() {
  const [username, setUsername] = useState(retrieveUserField() || "");
  const [password, setPassword] = useState("");
  const [loginError, setLoginError] = useState(false);
  const [buttonEnabled, setButtonEnabled] = useState(!SMART_BUTTON); // only enable when button is 'not' smart
  const [errorMessage, setErrorMessage] = useState("");
  const [pwEyeOpen, setPwEyeOpen] = useState(false);
  const [checkCount, setCheckCount] = useState(0);

  const checkCountRef = useRef();
  checkCountRef.current = checkCount;

  const checkUser = async (u) => {
    if (u !== "") {
      if (await usernameIsRegistered(u)) {
        setButtonEnabled(true);
      } else {
        setButtonEnabled(false);
      }
    } else {
      setButtonEnabled(false);
    }
  };

  useEffect(() => {
    // console.log("login effect here: ", username);
    if (SMART_BUTTON) {
      checkUser(username);
    }
  }, []);

  const navigate = useNavigate();

  async function usernameIsRegistered(username) {
    if (/^\s*$/.test(username)) {
      return false;
    }
    const ret = await FlipyaDB.getUser(username);
    // console.log("reg: ", username, ret);
    return typeof ret == "object";
  }

  const handleUsernameEdit = async (e) => {
    // console.log("username edit");
    setUsername(e.target.value);
    saveUserField(e.target.value);
    setLoginError(false);
    if (!SMART_BUTTON) {
      // if button not smart, we're done here
      return;
    }
    // console.log(checkCountRef.current, " increasing by 1");
    setCheckCount(checkCountRef.current + 1);
    let saveCount = checkCountRef.current + 1;
    if (e.target.value !== "") {
      if (await usernameIsRegistered(e.target.value)) {
        // console.log(
        //   "reg: check: ",
        //   checkCountRef.current,
        //   " save: ",
        //   saveCount
        // );
        if (checkCountRef.current == saveCount) {
          setButtonEnabled(true);
        }
      } else {
        // console.log("not: check: ", checkCount, " save: ", saveCount);
        if (checkCountRef.current == saveCount) {
          setButtonEnabled(false);
        }
      }
    } else {
      setButtonEnabled(false);
    }
  };

  const handlePasswordEdit = (e) => {
    // console.log("password edit: ", e.target.value);
    setPassword(e.target.value);
    setLoginError(false);
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

  const handleButton = async (e) => {
    e.preventDefault();
    const loginRes = await FlipyaDB.login(username, password);
    // console.log("login result: ", loginRes);
    if (typeof loginRes == "object") {
      // if got profile back, else error
      saveUser(username);
      // console.log("navigating to console");
      navigate(`/console`);
    } else {
      setLoginError(true);
      if (SMART_BUTTON) {
        setErrorMessage("Bad Password");
      } else {
        setErrorMessage("Bad Username or Password");
      }
    }
  };

  return (
    <>
      <Navbar page="login" />
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
        <button
          data-testid="login-button"
          className="login-button"
          disabled={!buttonEnabled}
          onClick={handleButton}
        >
          Login
        </button>
      </form>
      {loginError && <p className="login-message"> * {errorMessage} * </p>}
    </>
  );
}

export default Login;
