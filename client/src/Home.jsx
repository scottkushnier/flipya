import { Navigate } from "react-router-dom";
import { retrieveUser } from "./localStorage";

function Home() {
  const savedUser = retrieveUser();
  if (savedUser) {
    // console.log("savedUser: ", savedUser);
    return <Navigate to="/console" />;
  } else {
    return <Navigate to="/login" />;
  }
}

export default Home;
