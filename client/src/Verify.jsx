import { useState, useEffect } from "react";
import FlipyaDB from "./FlipyaDB";

function Verify({ verify, key1 }) {
  const [passed, setPassed] = useState("unknown");

  useEffect(() => {
    // console.log("verify: ", verify);
    // console.log("key: ", key1);

    FlipyaDB.tryVerifyEmail(verify, key1).then((verdict) => {
      if (verdict) {
        setPassed("PASS");
      } else {
        setPassed("FAIL");
      }
    });
  }, [verify, key1]);

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
  } else if (passed === "FAIL") {
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
  } else {
    return (
      <>
        <h2> FLIP YA! </h2>
        <p> Checking... </p>
      </>
    );
  }
}

export default Verify;
