import Home from "./Home";
import Login from "./Login";
import Register from "./Register";
import Console from "./Console";
import Directions from "./Directions";
import Verify from "./Verify";
import { BrowserRouter, Route, Routes, Navigate } from "react-router-dom";

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
      <>
        <BrowserRouter>
          <Routes>
            <Route path="/" element={<Home />} />
            <Route path="/login" element={<Login />} />
            <Route path="/register" element={<Register />} />
            <Route path="/console" element={<Console />} />
            <Route path="/directions" element={<Directions />} />
            <Route path="*" element={<Navigate to="/" />} />
            {/* <Route path="*" element={<Home />} /> */}
          </Routes>
        </BrowserRouter>
      </>
    );
  }
}

export default App;
