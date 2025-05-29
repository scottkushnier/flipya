import { Link, useNavigate } from "react-router-dom";
import { clearUser, clearUserField } from "./localStorage";
import FlipyaDB from "./FlipyaDB";

function Navbar({ user, page }) {
  const doLogout = () => {
    console.log("logout");
    clearUser();
    clearUserField();
    FlipyaDB.logout(user);
    navigate("/login");
  };

  const navigate = useNavigate();

  console.log("page: ", page);

  return (
    <div class="navbar">
      <ul class="navbar-ul">
        {!user && (
          <>
            <li class="navbar-li">
              <Link to="/login">
                <span class={page == "login" && "highlight"}>Login</span>
              </Link>
            </li>
            <li class="navbar-li">
              <Link to="/register">
                <span class={page == "register" && "highlight"}>Register</span>
              </Link>
            </li>
          </>
        )}
        {user && (
          <>
            <li class="navbar-li">
              <Link to="/">
                <span class={page == "console" && "highlight"}>Console</span>
              </Link>
            </li>
            <li class="navbar-li">
              <Link to="/directions">
                <span class={page == "directions" && "highlight"}>
                  Directions
                </span>
              </Link>
            </li>
            <li class="navbar-li" onClick={doLogout}>
              <span class="navbar-button">Logout</span>
            </li>
          </>
        )}
      </ul>
    </div>
  );
}

export default Navbar;
