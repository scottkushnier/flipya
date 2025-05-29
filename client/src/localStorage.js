function saveUser(user) {
  localStorage.setItem("user", JSON.stringify(user));
  console.log("user saved");
}

function retrieveUser() {
  const user = JSON.parse(localStorage.getItem("user"));
  console.log("retrieving: ", user);
  return user;
}

function clearUser() {
  localStorage.removeItem("user");
  console.log("user cleared");
}

function saveUserField(text) {
  localStorage.setItem("userfield", JSON.stringify(text));
}

function retrieveUserField(text) {
  const user = JSON.parse(localStorage.getItem("userfield"));
  return user;
}

function clearUserField() {
  localStorage.removeItem("userfield");
}

export {
  saveUser,
  retrieveUser,
  clearUser,
  saveUserField,
  retrieveUserField,
  clearUserField,
};
