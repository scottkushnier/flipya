import { useState, useEffect, useRef } from "react";
import { useNavigate } from "react-router-dom";
import FlipyaDB from "./FlipyaDB";
import { saveUser, saveUserField, retrieveUserField } from "./localStorage";
import Navbar from "./Navbar";

function Register() {
  const [username, setUsername] = useState(retrieveUserField() || "");
  const [password, setPassword] = useState("");
  const [loginError, setLoginError] = useState(false);
  const [errorMessage, setErrorMessage] = useState("");
  const [buttonEnabled, setButtonEnabled] = useState(false);
  const [pwEyeOpen, setPwEyeOpen] = useState(false);
  const [checkCount, setCheckCount] = useState(0);

  const checkCountRef = useRef();
  checkCountRef.current = checkCount;
  const navigate = useNavigate();

  const checkUser = async (u) => {
    if (u !== "") {
      if (await usernameIsAvailable(u)) {
        setButtonEnabled(true);
      } else {
        setButtonEnabled(false);
      }
    } else {
      setButtonEnabled(false);
    }
  };

  useEffect(() => {
    // console.log("reg effect here: ", username);
    checkUser(username);
  }, []);

  async function usernameIsAvailable(username) {
    if (/^\s*$/.test(username)) {
      return false;
    }
    const ret = await FlipyaDB.getUser(username);
    // console.log("reg: ", username, ret);
    return typeof ret != "object";
  }

  const handleUsernameEdit = async (e) => {
    // console.log("username edit");
    setUsername(e.target.value);
    saveUserField(e.target.value);
    setCheckCount(checkCountRef.current + 1);
    let saveCount = checkCountRef.current + 1;
    if (e.target.value !== "") {
      if (await usernameIsAvailable(e.target.value)) {
        if (checkCountRef.current == saveCount) {
          setButtonEnabled(true);
        }
      } else {
        if (checkCountRef.current == saveCount) {
          setButtonEnabled(false);
        }
      }
    } else {
      setButtonEnabled(false);
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
    // console.log("register");
    if (/^\s*$/.test(password)) {
      setLoginError(true);
      setErrorMessage("Password can't be blank");
    } else {
      await FlipyaDB.register(username, password);
      saveUser(username);
      navigate(`/console/${username}`);
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
      <Navbar page="register" />
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
          className="login-button register-button"
          onClick={handleButton}
          disabled={!buttonEnabled}
        >
          Register
        </button>
      </form>
      {loginError ? (
        <p className="login-message"> * {errorMessage} * </p>
      ) : null}
    </>
  );
}

export default Register;
