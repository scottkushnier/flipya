import Console from "./Console";
import Verify from "./Verify";

function App() {
  const queryParameters = new URLSearchParams(window.location.search);
  // console.log("params: ", queryParameters);
  const verify = queryParameters.get("verify");
  const hash = queryParameters.get("hash");
  // console.log(verify);
  if (verify) {
    return <Verify verify={verify} hash={hash} />;
  } else {
    return (
      <div className="App">
        <Console />
      </div>
    );
  }
}

export default App;
