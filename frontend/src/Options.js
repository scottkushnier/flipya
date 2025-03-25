// Function that relate to user specifications:
//    wordset to use, flip deck, practice size

import FlipyaDB from "./FlipyaDB";
import { useEffect, useState, useCallback } from "react";
import bcrypt from "bcryptjs";
import wordData from "./wordData";
import EmailAPI from "./EmailAPI";

const APP_BASE_URL = process.env.REACT_APP_BASE_URL;

// default size of 20 cards
let savePracticeSize = 20;

let currentEmail = "";
let emailStatus = null;
let emailList = [];
let emailListInited = false;

// props are 2 functions:
//    newSetFn - call to clear history & specify new word set information
//    flipDeck - call to reverse roles of language1 & language2 (comprehension vs. production)
// and auto flag
//    which tells if cards are being shown in auto running mode,
//    in which case, disable ability to modify user inputs

function Options({ newSetFn, flipDeck, auto }) {
  const [wordSets, setWordSets] = useState(null);
  const [wordSetId, setWordSetId] = useState(1);
  const [reverse, setReverse] = useState(false);
  const [practiceSize, setPracticeSize] = useState(null);

  const handleWordSetChange = (event) => {
    // console.log(event.target.value);
    // console.log(wordSets[event.target.value]);
    setWordSetId(wordSets[event.target.value].id);
    newSetFn(wordSets[event.target.value].id, reverse, practiceSize);
  };

  const handleReverse = () => {
    // newSetFn(wordSetId, !reverse, practiceSize);
    setReverse(() => !reverse);
    flipDeck();
  };

  const handlePracticeCheck = () => {
    if (!auto) {
      const newSize = practiceSize ? null : savePracticeSize;
      newSetFn(wordSetId, reverse, newSize);
      setPracticeSize(() => newSize);
    }
  };

  const handleNewPracticeSize = (e) => {
    e.preventDefault();
    if (!auto) {
      let newSize = e.target.value;
      // console.log("practice size", newSize);
      setPracticeSize(() => newSize);
      newSetFn(wordSetId, reverse, newSize);
      savePracticeSize = newSize;
    }
  };

  const initEmailList = () => {
    // console.log("init email list");
    FlipyaDB.getAllEmails().then((list) => {
      // console.log("emails: ", l);
      emailList = list.emails;
    });
    emailListInited = true;
  };

  const emailVerified = (email) => {
    const found = emailList.filter((item) => item.email === email);
    if (found[0] && found[0].status === "verified") {
      return true;
    } else {
      return false;
    }
  };

  const emailUnverified = (email) => {
    const found = emailList.filter((item) => item.email === email);
    if (found[0] && found[0].status === "unverified") {
      return true;
    } else {
      return false;
    }
  };

  const emailBlacklisted = (email) => {
    const found = emailList.filter((item) => item.email === email);
    if (found[0] && found[0].num_attempts >= 10) {
      return true;
    } else {
      return false;
    }
  };

  const maxEmailVerifyAttempts = 3;

  // const maxEmailVerifyAttempts = 10;

  const emailIncAttempts = (email) => {
    // console.log("email list: ", emailList);
    const found = emailList.filter((item) => item.email === email);
    if (found[0]) {
      found[0].num_attempts++;
    }
    if (found[0].num_attempts <= maxEmailVerifyAttempts) {
      return true;
    } else {
      return false;
    }
  };

  // check if email has verified (independently by visit to proper page) by checking DB
  const checkEmail = (email) => {
    FlipyaDB.getEmail(email).then((emailInfo) => {
      // console.log("status: ", emailInfo.status);
      if (emailInfo.status === "verified") {
        const found = emailList.filter((item) => item.email === email);
        found[0].status = "verified";
        const myInput = document.getElementById("email");
        myInput.style.backgroundColor = "#bfb";
        document.getElementById("email-button").innerText = "Email Session";
        document.getElementById("email-button").style.display = null;
        emailStatus = "verified";
        clearPollInterval();
      }
    });
  };

  let myPollInterval;

  const clearPollInterval = () => {
    if (myPollInterval) {
      clearInterval(myPollInterval);
      myPollInterval = null;
    }
  };

  // handle that use has edited email address - check status of -that- email address
  const handleEmailEdit = (e) => {
    // console.log("typed email: ", e.target.value);
    if (!emailListInited) {
      initEmailList();
    }
    const email = e.target.value;
    currentEmail = email;
    const pattern = /.+@.+\..+/;
    const emailSyntaxGood = pattern.test(email);
    // console.log("res: ", res);
    const myInput = document.getElementById("email");
    if (!e.target.value) {
      // empty field - no error, but not verified
      clearPollInterval();
      myInput.style.backgroundColor = "white";
      document.getElementById("email-button").style.display = "none";
      emailStatus = null;
    } else if (!emailSyntaxGood) {
      clearPollInterval();
      myInput.style.backgroundColor = "pink";
      document.getElementById("email-button").style.display = "none";
      emailStatus = null;
    } else {
      if (emailVerified(email)) {
        clearPollInterval();
        myInput.style.backgroundColor = "#bfb";
        document.getElementById("email-button").innerText = "Email Session";
        document.getElementById("email-button").style.display = null;
        emailStatus = "verified";
        console.log("email status here: ", emailStatus);
      } else if (emailBlacklisted(email)) {
        clearPollInterval();
        myInput.style.backgroundColor = "pink";
        document.getElementById("email-button").style.display = "none";
        emailStatus = null;
      } else if (emailUnverified(email)) {
        // waiting on verification - start polling DB
        setTimeout(() => {
          checkEmail(email);
        }, 100);
        if (myPollInterval) {
          clearPollInterval();
        }
        myPollInterval = setInterval(() => {
          checkEmail(email);
        }, 2000);
        myInput.style.backgroundColor = "#ff9";
        document.getElementById("email-button").innerText = "Try verify again";
        document.getElementById("email-button").style.display = null;
        emailStatus = "unverified";
      } else {
        clearPollInterval(); // email present, valid syntax, user hasn't initiated verification yet...
        myInput.style.backgroundColor = "white";
        document.getElementById("email-button").innerText = "Verify email";
        document.getElementById("email-button").style.display = null;
        emailStatus = "new";
      }
    }
  };

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
          currentEmail,
          "flipya session",
          text
        );
      });
    } else if (emailStatus === "unverified" || emailStatus === "new") {
      // initiate verification process
      let key = null;
      if (emailStatus === "new") {
        key = randomWord(10);
        FlipyaDB.addEmail(currentEmail, key);
        emailList.push({
          email: currentEmail,
          status: "unverified",
          key: key,
          num_attempts: 0,
        });
        const myInput = document.getElementById("email");
        myInput.style.backgroundColor = "#ff9";
        document.getElementById("email-button").innerText = "Try verify again";
        document.getElementById("email-button").style.display = null;
        emailStatus = "unverified";
      }
      if (!key) {
        // not new, go get key
        key = emailList.filter((item) => item.email === currentEmail)[0].key;
        console.log("found key: ", key);
      }
      console.log("verify email");
      FlipyaDB.incAttempts(currentEmail);
      // console.log("emailList: ", emailList);
      if (emailIncAttempts(currentEmail)) {
        // if past limit, will return false
        bcrypt.genSalt(10).then((salt) => {
          // console.log("salt: ", salt);
          const pw = key + "-" + currentEmail;
          // console.log("pw: ", pw);
          bcrypt.hash(pw, salt).then((hash) => {
            // console.log("hash: ", hash);
            const enc_hash = encodeURIComponent(hash);
            const link =
              `${APP_BASE_URL}/?verify=` + currentEmail + "&hash=" + enc_hash;
            console.log("link: ", link);
            const msg =
              "Please click on the following link or point your web browser to it. Thanks. \n\n" +
              link;
            console.log("msg: ", msg);
            EmailAPI.sendEmail(
              "scottkushnier@hstreet.com",
              currentEmail,
              "verification link",
              msg
            );
            // console.log("should send msg here: ", msg);
          });
        });
        clearPollInterval(); // just to be sure, clear any previously existing
        myPollInterval = setInterval(() => {
          checkEmail(currentEmail);
        }, 2000);
      } else {
        clearPollInterval();
        const myInput = document.getElementById("email");
        myInput.style.backgroundColor = "pink";
        document.getElementById("email-button").style.display = "none";
        emailStatus = null;
      }
    }
  }

  const restart = () => {
    console.log("restart");
    newSetFn(wordSetId, reverse, practiceSize);
  };

  const noSubmit = (e) => {
    e.preventDefault();
  };

  const initNewSet = useCallback(() => {
    FlipyaDB.getWordSets().then((sets) => {
      setWordSets(() => sets);
      // console.log(sets);
      const id = sets[0].id;
      setWordSetId(id);
      newSetFn(id, false, null);
    });
  }, []);

  // initially, set word set to first in list of selection options
  useEffect(() => {
    initNewSet();
  }, [initNewSet]);

  return (
    <>
      <div className="options">
        <form id="myForm" onSubmit={noSubmit}>
          <label htmlFor="sets"></label>
          <div>
            {wordSets ? (
              <select
                name="sets"
                id="sets"
                onChange={handleWordSetChange}
                disabled={auto}
              >
                {wordSets.map((set, i) => (
                  <option value={i} key={set.id}>
                    {set.language1} &harr; {set.language2} ({set.theme}
                    )&nbsp;&nbsp;&nbsp;
                  </option>
                ))}
              </select>
            ) : null}
          </div>
          <div className="reverse-row">
            <input
              className="reverse-check"
              type="checkbox"
              id="reverse"
              onChange={handleReverse}
              value={reverse}
              disabled={auto}
            />
            <label className="reverse-label" htmlFor="reverse">
              Flip deck
            </label>
          </div>
          <div className="practice-row">
            <input
              className="practice-check"
              type="checkbox"
              id="practice"
              onChange={handlePracticeCheck}
              disabled={auto}
            />
            <label className="practice-label" htmlFor="practice">
              Practice set size
            </label>
            {practiceSize != null ? (
              <input
                className={
                  practiceSize >= 3
                    ? "practice-input"
                    : "practice-input input-invalid"
                }
                type="text"
                value={practiceSize}
                disabled={auto}
                onChange={handleNewPracticeSize}
              />
            ) : null}
          </div>
          <div className="email-row">
            <label className="email-label" htmlFor="email">
              Email
            </label>
            <input
              className="email-input"
              type="input"
              id="email"
              onChange={handleEmailEdit}
            />
          </div>
          <div className="email-button-row">
            <button
              onClick={handleEmailButton}
              id="email-button"
              className="email-button"
              style={{ display: "none" }}
            >
              Email Session
            </button>
          </div>
          <div>
            <button
              className="restart-button"
              onClick={restart}
              disabled={auto}
            >
              START OVER
            </button>
          </div>
        </form>
      </div>
    </>
  );
}

export default Options;
