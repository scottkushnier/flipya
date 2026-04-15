import React from "react";
import ReactDOM from "react-dom/client";
import App from "./App.jsx";
import "./index.css";

// different background to signify development
if (import.meta.env.VITE_REACT_APP_ENV == "development") {
  document.body.classList.add("dev");
}

ReactDOM.createRoot(document.getElementById("root")).render(
  <React.StrictMode>
    <App />
  </React.StrictMode>,
);
