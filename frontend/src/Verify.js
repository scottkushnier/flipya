import bcrypt from "bcryptjs";
import { useState, useEffect } from "react";
import FlipyaDB from "./FlipyaDB";

// function testBcrypt() {
//     bcrypt.genSalt(10).then((salt) => {
//       console.log("salt: ", salt);
//       bcrypt.hash("foobaz-kushnier@hstreet.com", salt).then((hash) => {
//         console.log("hash: ", hash);
//         console.log("hash-url: ", encodeURIComponent(hash));
//         bcrypt.compare("foobaz-kushnier@hstreet.com", hash).then((result) => {
//           if (result) {
//             console.log("match");
//           } else {
//             console.log("nomatch");
//           }
//         });
//       });
//     });
//   }

function Verify({ verify, hash }) {
  const [passed, setPassed] = useState("unknown");

  useEffect(() => {
    console.log("verify: ", verify);
    console.log("hash: ", hash);
    FlipyaDB.getEmail(verify).then((email) => {
      console.log("email: ", email);
      let key = email.key;
      const pw = key + "-" + verify;
      // console.log("pw: ", pw);
      bcrypt.compare(pw, hash).then((result) => {
        if (result) {
          setPassed("PASS");
          FlipyaDB.verifyEmail(verify);
        } else {
          setPassed("FAIL");
        }
      });
    });
  }, []);

  if (passed === "PASS") {
    return (
      <>
        <h2> FLIP YA! </h2>
        <div className="verified-box">
          <p>
            Your email, <b>{verify}</b>, has been successfully verified.
          </p>
          <p>Thank you. </p>{" "}
          <p>Please return to your original browser to continue.</p>
        </div>
      </>
    );
  } else {
    return (
      <>
        <h2> FLIP YA! </h2>
        <div className="unverified-box">
          <p>
            There was a problem in verifying your email, <b>{verify}</b>.
          </p>
          <p>
            Please click on the link included in the email or carefully copy the
            link to a web browser.
          </p>
          <p> Thank you. </p>
        </div>
      </>
    );
  }
}

export default Verify;
