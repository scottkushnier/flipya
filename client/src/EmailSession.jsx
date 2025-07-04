import { useEffect, useState, useRef } from "react";
// import { act } from "@testing-library/react";

import EmailAPI from "./services/emailAPI";
import FlipyaDB from "./FlipyaDB";
import wordData from "./wordData";

// const APP_BASE_URL = process.env.REACT_APP_BASE_URL;

const APP_BASE_URL = import.meta.env.VITE_REACT_APP_BASE_URL;

// const APP_BASE_URL = "http://" + window.location.hostname + ":3000";

// const APP_BASE_URL =
//   process.env.NODE_ENV === "test"
//     ? ""
//     : window.location.hostname.includes("render")
//     ? "https://" + window.location.hostname
//     : window.location.hostname + ":3001";

function EmailSession({ username, started }) {
  const [userProfile, setUserProfile] = useState(null);
  const [emailList, setEmailList] = useState([]);
  const [email, setEmail] = useState("");
  const [emailStatus, setEmailStatus] = useState(null);
  const [emailGood, setEmailGood] = useState(false);
  const [emailMsg, setEmailMsg] = useState("");
  const [pollInterval, setPollInterval] = useState(null);
  const [overInfo, setOverInfo] = useState(false);

  const emailRef = useRef();
  emailRef.current = email;
  const emailListRef = useRef();
  emailListRef.current = emailList;
  const pollIntervalRef = useRef();
  pollIntervalRef.current = pollInterval;

  const initEmailList = () => {
    // console.log("get all emails for: ", username);
    FlipyaDB.getAllEmails(username).then((list) => {
      //   console.log("emails list: ", list);
      setEmailList(() => list.emails);
    });
  };

  const setUpEmailForUser = (username) => {
    FlipyaDB.getUser(username).then((profile) => {
      //   console.log("profile: ", profile);
      setUserProfile(profile);
      setEmail(() => (profile.user.email ? profile.user.email : ""));
      // handleNewEmail(profile.user.email);
      setTimeout(() => {
        handleNewEmail(profile.user.email);
      }, 100);
    });
  };

  useEffect(() => {
    initEmailList();
    setUpEmailForUser(username);
    return () => {
      // clear checking-for-email upon unrender
      clearPollInterval();
    };
  }, []);

  //   initEmailList();
  //   // console.log("emailList: ", emailList);

  const emailVerified = (email) => {
    // console.log("check ver email: ", email, " in ", emailListRef.current);
    const found = emailListRef.current.filter((item) => item.email === email);
    // console.log("found: ", found);
    if (found[0] && found[0].status === "verified") {
      // console.log("found");
      return true;
    } else {
      // console.log("not found");
      return false;
    }
  };

  const emailUnverified = (email) => {
    const found = emailListRef.current.filter((item) => item.email === email);
    if (found[0] && found[0].status === "unverified") {
      return true;
    } else {
      return false;
    }
  };

  const emailBlacklisted = (email) => {
    const found = emailListRef.current.filter((item) => item.email === email);
    if (found[0] && found[0].num_attempts >= 10) {
      return true;
    } else {
      return false;
    }
  };

  // const maxEmailVerifyAttempts = 3;
  const maxEmailVerifyAttempts = 10;

  const emailIncAttempts = (email) => {
    // console.log("email list: ", emailListRef.current);
    const found = emailListRef.current.filter((item) => item.email === email);
    if (found[0]) {
      found[0].num_attempts++;
    }
    if (found[0].num_attempts <= maxEmailVerifyAttempts) {
      return true;
    } else {
      return false;
    }
  };

  // check if email has been verified (by user having clicked on email link) by checking DB
  const checkEmail = (email) => {
    FlipyaDB.getEmail(email).then((emailInfo) => {
      // console.log("status: ", emailInfo.status);
      if (emailInfo.status === "verified") {
        // console.log("email verified");
        const found = emailListRef.current.filter(
          (item) => item.email === email
        );
        found[0].status = "verified";
        setEmailGood(true);
        setEmailStatus("verified");
        FlipyaDB.updateEmail(username, email);
        clearPollInterval();
      }
    });
  };

  const clearPollInterval = () => {
    // console.log("clear poll interval called");
    if (pollIntervalRef.current) {
      // console.log("clearing now..", pollIntervalRef.current);
      clearInterval(pollIntervalRef.current);
      setPollInterval(null);
    }
  };

  const handleNewEmail = (newEmail) => {
    // console.log("handleNewEmail: ", newEmail);
    if (!newEmail || newEmail === "") {
      setEmailStatus("blank");
      return null;
    }
    // console.log("handle new email: ", newEmail);
    const pattern = /.+@.+\..+/;
    let emailSyntaxGood = pattern.test(newEmail);
    // empty field - no error, but not verified
    if (!newEmail) {
      clearPollInterval();
      setEmailStatus(null);
      return null;
      // bad email syntax form, i.e. mark@foo
    } else if (!emailSyntaxGood) {
      clearPollInterval();
      setEmailStatus(null);
      return null;
    } else {
      if (emailVerified(newEmail)) {
        // console.log("email is verified");
        clearPollInterval();
        setEmailGood(true);
        setEmailStatus("verified");
        // console.log("email status here: ", emailStatus);
        return "verified";
      } else if (emailBlacklisted(newEmail)) {
        clearPollInterval();
        setEmailStatus(null);
        return null;
      } else if (emailUnverified(newEmail)) {
        // waiting on verification - start polling DB
        // console.log("email unverified, starting polling DB");
        setTimeout(() => {
          checkEmail(newEmail);
        }, 100);
        if (pollInterval) {
          clearPollInterval();
        }
        const myPollInterval = setInterval(() => {
          // console.log("checking email...");
          checkEmail(newEmail);
        }, 2000);
        setPollInterval(myPollInterval);
        // console.log("new poll interval: ", myPollInterval);
        setEmailStatus("unverified");
        return "unverified";
      } else {
        // email present, valid syntax, user hasn't initiated verification yet...
        clearPollInterval();
        setEmailGood(false);
        setEmailStatus("new");
        return "new";
      }
    }
  };

  // handle that use has edited email address - check status of -that- email address
  const handleEmailEdit = (e) => {
    // console.log("typed email: ", e.target.value);
    setEmail(e.target.value);
    const newEmail = e.target.value;
    const status = handleNewEmail(newEmail);
    // console.log("email status: ", status);
    if (status === "verified" && newEmail !== userProfile.email) {
      //   console.log("tell DB of verified email for user");
      userProfile.email = newEmail;
      setEmailGood(true);
      FlipyaDB.updateEmail(username, newEmail);
    }
  };

  function displayEmailMsg(msg) {
    setEmailMsg(() => msg);
    setTimeout(() => {
      setEmailMsg(() => "");
    }, 5000);
  }

  function randomWord(n) {
    let acc = "";
    for (let i = 0; i < n; i++) {
      let x = Math.random();
      const c = String.fromCharCode(x * 26 + 97);
      acc += c;
    }
    // console.log("acc: ", acc);
    return acc;
  }

  // button will send session of email address is verified, initiate verification if not
  function handleEmailButton() {
    // console.log("email");
    // console.log("status: ", emailStatus);
    // console.log("current: ", currentEmail);
    if (emailStatus === "verified") {
      wordData.generateEmailTextForSession().then((text) => {
        // console.log(text);
        EmailAPI.sendEmail(
          "scottkushnier@hstreet.com",
          email,
          "flipya session",
          text
        ).then((ret) => {
          // console.log("email API return: ", ret);
          displayEmailMsg("Session sent.");
        });
      });
    } else if (emailStatus === "unverified" || emailStatus === "new") {
      // initiate verification process
      let key = null;
      if (emailStatus === "new") {
        key = randomWord(10);
        FlipyaDB.addEmail(email, username, key);
        emailListRef.current.push({
          email: email,
          status: "unverified",
          key: key,
          num_attempts: 0,
        });
        setEmailGood(false);
        setEmailStatus("unverified");
      }
      if (!key) {
        // not new, generate another key & try again
        key = randomWord(10);
        FlipyaDB.changeEmailKey(email, key);
        // console.log("found key: ", key);
      }
      //   console.log("verify email");
      FlipyaDB.incAttempts(email);
      // console.log("emailList: ", emailListRef.current);
      if (emailIncAttempts(email)) {
        const link =
          "$APP_BASE_URL$" +
          "/" +
          encodeURI("?verify=" + email + "&key=" + key);
        // console.log("link: ", link);
        const msg =
          "Please click on the following link or point your web browser to it. Thanks. \n\n" +
          link;
        // console.log("msg: ", msg);
        EmailAPI.sendEmail(
          "scottkushnier@hstreet.com",
          email,
          "verification link",
          msg
        );
        displayEmailMsg("Verification email sent.");

        // console.log("should send msg here: ", msg);

        clearPollInterval(); // just to be sure, clear any previously existing
        const myPollInterval = setInterval(() => {
          // console.log("checking email 2...");
          checkEmail(email);
        }, 2000);
        setPollInterval(myPollInterval);
        // console.log("new poll interval: ", myPollInterval);
      } else {
        clearPollInterval();
        setEmailStatus(null);
      }
    }
  }

  const colorFromEmailStatus = (status) => {
    let color = "pink";
    if (status) {
      if (status == "verified") {
        color = "#bfb";
      } else if (status == "unverified") {
        color = "#ff9";
      } else if (status == "new" || status == "blank") {
        color = "white";
      }
    }
    return color;
  };

  const handleEnterInfo = () => {
    // console.log("mouse enter");
    setOverInfo(true);
  };

  const handleLeaveInfo = () => {
    // console.log("mouse leave");
    setOverInfo(false);
  };

  return (
    <>
      <div className="email-row">
        <label className="email-label" htmlFor="email">
          Email
        </label>
        <input
          className="email-input"
          type="input"
          id="email"
          value={email}
          style={{ backgroundColor: colorFromEmailStatus(emailStatus) }}
          onChange={handleEmailEdit}
        />
        <button
          type="button"
          className="info-icon"
          onMouseEnter={handleEnterInfo}
          onMouseLeave={handleLeaveInfo}
        />
      </div>
      <div className="email-button-row">
        <button
          onClick={handleEmailButton}
          id="email-button"
          className="email-button"
          disabled={!started && emailGood}
          style={
            !emailStatus || emailStatus === "blank" ? { display: "none" } : null
          }
        >
          {emailGood
            ? "Email Session"
            : emailStatus === "unverified"
            ? "Try verify again"
            : "Verify email"}
        </button>
        <p className="email-msg"> {emailMsg}</p>
        {overInfo && (
          <div class="email-info">
            <p>
              Sessions (including words & translations) can be sent to an email
              address of choice once it's been verified.
            </p>
          </div>
        )}
      </div>
    </>
  );
}

export default EmailSession;
