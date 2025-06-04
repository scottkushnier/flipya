function saveUser(user) {
  localStorage.setItem("user", JSON.stringify(user));
  console.log("user saved");
}

function retrieveUser() {
  const user = JSON.parse(localStorage.getItem("user"));
  // console.log("retrieving: ", user);
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

function saveSpeedInLS(speed) {
  let settings = JSON.parse(localStorage.getItem("settings"));
  settings = settings || {};
  settings.speed = speed;
  localStorage.setItem("settings", JSON.stringify(settings));
}

function getSpeedFromLS() {
  let settings = JSON.parse(localStorage.getItem("settings"));
  if (settings) {
    return settings.speed;
  } else return null;
}

function saveReverseInLS(reverse) {
  let settings = JSON.parse(localStorage.getItem("settings"));
  settings = settings || {};
  settings.reverse = reverse;
  localStorage.setItem("settings", JSON.stringify(settings));
}

function getReverseFromLS() {
  let settings = JSON.parse(localStorage.getItem("settings"));
  if (settings) {
    return settings.reverse;
  } else return null;
}

function saveLevelsInLS(minLevel, maxLevel) {
  let settings = JSON.parse(localStorage.getItem("settings"));
  settings = settings || {};
  settings.levels = [+minLevel, +maxLevel];
  localStorage.setItem("settings", JSON.stringify(settings));
}

function getLevelsFromLS() {
  let settings = JSON.parse(localStorage.getItem("settings"));
  if (settings) {
    return settings.levels;
  } else return null;
}

function clearLevels() {
  let settings = JSON.parse(localStorage.getItem("settings"));
  if (settings) {
    delete settings.levels;
    localStorage.setItem("settings", JSON.stringify(settings));
  }
}

function saveWordArrayInLS(wordArray) {
  localStorage.setItem("wordarray", JSON.stringify(wordArray));
}

function getWordArrayFromLS() {
  const wordArray = JSON.parse(localStorage.getItem("wordarray"));
  return wordArray;
}

function saveWordIndexInLS(wordIndex) {
  localStorage.setItem("wordindex", JSON.stringify(wordIndex));
}

function getWordIndexFromLS() {
  const index = JSON.parse(localStorage.getItem("wordindex"));
  return index;
}

function clearWordInfo() {
  localStorage.removeItem("wordarray");
  localStorage.removeItem("wordindex");
}

function clearSettings() {
  localStorage.removeItem("settings");
}

export {
  saveUser,
  retrieveUser,
  clearUser,
  saveUserField,
  retrieveUserField,
  clearUserField,
  saveSpeedInLS,
  getSpeedFromLS,
  saveReverseInLS,
  getReverseFromLS,
  saveLevelsInLS,
  getLevelsFromLS,
  clearLevels,
  saveWordArrayInLS,
  getWordArrayFromLS,
  saveWordIndexInLS,
  getWordIndexFromLS,
  clearWordInfo,
  clearSettings,
};
