import Console from "./Console";
import Verify from "./Verify";

function App() {
  const queryParameters = new URLSearchParams(window.location.search);
  // console.log("params: ", queryParameters);
  const verify = queryParameters.get("verify");
  const key = queryParameters.get("key");
  // console.log(verify, key);
  if (verify) {
    return <Verify verify={verify} key1={key} />;
  } else {
    return (
      <div className="App">
        <Console />
      </div>
    );
  }
}

export default App;
