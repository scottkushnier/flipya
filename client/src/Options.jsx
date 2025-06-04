// Function that relate to user specifications:
//    wordset to use, flip deck, practice size

import FlipyaDB from "./FlipyaDB";
import wordData from "./wordData";

import { useEffect, useState, useRef } from "react";

import {
  saveReverseInLS,
  getReverseFromLS,
  saveLevelsInLS,
  getLevelsFromLS,
  clearLevels,
  clearWordInfo,
} from "./localStorage";

// import { act } from "@testing-library/react";

const MIN_DIFFICULTY_LEVEL = 1;
const MAX_DIFFICULTY_LEVEL = 9;
const DEFAULT_PRACTICE_SIZE = 20;

// props are 3 functions:
//    newSetFn - call to clear history & specify new word set information
//    flipDeck - call to reverse roles of language1 & language2 (comprehension vs. production)
// auto flag
//    which tells if cards are being shown in auto running mode,
//    in which case, disable ability to modify user inputs

function Options({ newSetFn, flipDeck, auto, started, username }) {
  const [userProfile, setUserProfile] = useState(null);
  const [wordSets, setWordSets] = useState([]);
  const [wordSetId, setWordSetId] = useState(0);
  const [wordsetInd, setWordsetInd] = useState(0);
  const [reverse, setReverse] = useState(false);
  const [minLevel, setMinLevel] = useState(MIN_DIFFICULTY_LEVEL); // variable via UI
  const [maxLevel, setMaxLevel] = useState(MAX_DIFFICULTY_LEVEL);
  const [minForSet, setMinForSet] = useState(MIN_DIFFICULTY_LEVEL); // min & max as determined by data in wordset
  const [maxForSet, setMaxForSet] = useState(MAX_DIFFICULTY_LEVEL);
  const [setSizeInput, setSetSizeInput] = useState(DEFAULT_PRACTICE_SIZE);
  const [sizeInputCheck, setSizeInputCheck] = useState(false);
  const [setSize, setSetSize] = useState(0);

  const [delayCount, setDelayCount] = useState(0); // used for updating practice size, only tell DB once has stabilized

  const delayCountRef = useRef();
  delayCountRef.current = delayCount;

  const setUpForUser = (username, rev, levels) => {
    // kick off two requests in parallel, then do stuff once both are done
    const p1 = FlipyaDB.getWordSets();
    const p2 = FlipyaDB.getUser(username);
    p1.then((sets) => {
      // console.log("sets: ", sets);
      setWordSets(() => sets);
      p2.then((profile) => {
        // console.log("profile: ", profile);
        setUserProfile(() => profile.user);

        // console.log("looking for: ", profile.user.wordset_id, " in ", sets);
        let id;
        let ind = sets.findIndex(
          (element) => +element.id === +profile.user.wordset_id
        );
        if (ind === -1) {
          // console.log("no wordset, just pick first");
          ind = 0;
          id = sets[0].id;
          FlipyaDB.updateWordsetId(username, id);
        } else {
          setWordSetId(() => +profile.user.wordset_id);
          id = +profile.user.wordset_id;
        }
        setWordSetId(() => id);
        setWordsetInd(() => ind);
        FlipyaDB.minMaxForSet(id).then((minMax) => {
          // console.log("min-max: ", minMax, minMax.min, minMax.max);
          // console.log("min-max: ", minMax);
          if (!levels) {
            setMinLevel(() => minMax.min);
            setMaxLevel(() => minMax.max);
          }
          setMinForSet(() => minMax.min);
          setMaxForSet(() => minMax.max);
        });
        if (levels) {
          console.log("setting levels: ", levels);
          setMinLevel(() => levels[0]);
          setMaxLevel(() => levels[1]);
        }
        let setSize = profile.user.set_size ? +profile.user.set_size : 0;
        setSetSizeInput(() => (setSize ? setSize : DEFAULT_PRACTICE_SIZE));
        setSetSize(() => setSize);
        setSizeInputCheck(() => setSize !== 0);
        console.log("reverse for newfn: ", rev);
        newSetFn(id, rev, +profile.user.set_size);
      });
    });
  };

  const setSavedOptions = () => {
    const options = {};
    const savedReverse = getReverseFromLS();
    console.log("saved rev: ", savedReverse);
    if (savedReverse) {
      console.log("here in savedReverse cond");
      setReverse(true);
      // flipDeck();
      options.rev = true;
    }
    const levels = getLevelsFromLS();
    if (levels) {
      options.levels = levels;
    }
    console.log("options: ", options);
    return options;
  };

  useEffect(() => {
    const { rev, levels } = setSavedOptions();
    setUpForUser(username, rev, levels);
  }, []);

  const handleWordSetChange = (event) => {
    setWordsetInd(() => event.target.value);
    setWordSetId(wordSets[event.target.value].id);
    FlipyaDB.updateWordsetId(username, wordSets[event.target.value].id);
    clearLevels();
    FlipyaDB.minMaxForSet(wordSets[event.target.value].id).then((minMax) => {
      // console.log("min-max: ", minMax, minMax.min, minMax.max);
      setMinLevel(() => minMax.min);
      setMinForSet(() => minMax.min);
      setMaxLevel(() => minMax.max);
      setMaxForSet(() => minMax.max);
    });
    newSetFn(wordSets[event.target.value].id, reverse, setSize, true);
    clearWordInfo();
  };

  const handleReverse = () => {
    saveReverseInLS(!reverse);
    setReverse(() => !reverse);
    flipDeck();
  };

  // call trigger on every mod, but only update DB on last one (i.e. where counter sent matches current counter for mods)
  const triggerSetSizeChange = (size, counter) => {
    // console.log("trigger: size: ", size, " counter: ", counter);
    // console.log("current counter: ", delayCountRef.current);
    if (counter === delayCountRef.current) {
      // console.log("calling now with: ", size);
      FlipyaDB.updateSetSize(username, size);
    }
  };

  const updateSetSizeOnDelay = (size) => {
    setTimeout(() => {
      triggerSetSizeChange(size, delayCount + 1);
    }, 1000);
    setDelayCount(() => delayCount + 1);
  };

  const handlePracticeCheck = () => {
    let newSize;
    if (sizeInputCheck) {
      // console.log("unchecked");
      newSize = 0;
    } else {
      // console.log("checked");
      newSize = setSizeInput;
    }
    setSetSize(() => newSize);
    // console.log("practice size: ", newSize);
    setSizeInputCheck(() => !sizeInputCheck);
    updateSetSizeOnDelay(newSize);
    newSetFn(wordSetId, reverse, newSize, true);
  };

  const handleNewPracticeSize = (e) => {
    e.preventDefault();
    const newSize = e.target.value;
    setSetSizeInput(newSize);
    // console.log("practice size: ", newSize);
    updateSetSizeOnDelay(newSize);
    newSetFn(wordSetId, reverse, newSize, true);
  };

  const handleNewSet = (e) => {
    newSetFn(wordSetId, reverse, setSize, true);
    clearWordInfo();
  };

  const handleMinLevelChange = (e) => {
    // console.log("min level change");
    // stay within bounds for word set
    if (e.target.value > maxForSet || e.target.value < minForSet) {
      return;
    }
    setMinLevel(e.target.value); // go ahead & move indicator
    if (e.target.value > maxLevel) {
      // but if trying to set higher than max, then move max up too
      setMaxLevel(e.target.value);
      wordData.modWordLevels(e.target.value, e.target.value);
      saveLevelsInLS(e.target.value, e.target.value);
    } else {
      wordData.modWordLevels(e.target.value, maxLevel); // all good, set new min
      saveLevelsInLS(e.target.value, maxLevel);
    }
  };

  const handleMaxLevelChange = (e) => {
    // console.log("max level change");
    if (e.target.value < minForSet || e.target.value > maxForSet) {
      return;
    }
    setMaxLevel(e.target.value); // go ahead & move indicator
    if (e.target.value < minLevel) {
      // but if trying to set lower than min, then move min down too
      setMinLevel(e.target.value);
      wordData.modWordLevels(e.target.value, e.target.value);
      saveLevelsInLS(e.target.value, e.target.value);
    } else {
      wordData.modWordLevels(minLevel, e.target.value); // all good, set new max
      saveLevelsInLS(minLevel, e.target.value);
    }
  };

  if (!wordSets || !userProfile) {
    return "setting up...";
  } else {
    return (
      <>
        <div className="options">
          <form id="myForm" onSubmit={(e) => e.preventDefault()}>
            <label htmlFor="sets"></label>
            <div>
              <select
                name="sets"
                id="sets"
                onChange={handleWordSetChange}
                disabled={auto}
                value={wordsetInd}
              >
                {wordSets.map((set, i) => {
                  return (
                    <option value={i} key={set.id}>
                      {set.language1} &harr; {set.language2} ({set.theme}
                      )&nbsp;&nbsp;&nbsp;
                    </option>
                  );
                })}
              </select>
            </div>
            <div className="reverse-row">
              <input
                className="reverse-check"
                type="checkbox"
                id="reverse"
                onChange={handleReverse}
                checked={reverse}
                disabled={auto}
                data-testid="reverse-checkbox"
              />
              <label className="reverse-label" htmlFor="reverse">
                Flip deck
              </label>
            </div>
            <div className="min-level-row">
              <label className="min-level-label" htmlFor="min-level">
                Difficulty
              </label>
              <input
                type="range"
                className="min-level-input"
                id="min-level"
                name="min-level"
                min={MIN_DIFFICULTY_LEVEL}
                max={MAX_DIFFICULTY_LEVEL}
                width="10"
                value={minLevel}
                onChange={handleMinLevelChange}
                disabled={auto}
              />
            </div>
            <div className="max-level-row">
              <label htmlFor="max-level" className="max-level-label">
                range
              </label>
              <input
                type="range"
                className="max-level-input"
                id="max-level"
                name="max-level"
                min={MIN_DIFFICULTY_LEVEL}
                max={MAX_DIFFICULTY_LEVEL}
                value={maxLevel}
                onChange={handleMaxLevelChange}
                disabled={auto}
              />
            </div>
            <div className="practice-row">
              <input
                className="practice-check"
                type="checkbox"
                id="practice"
                checked={sizeInputCheck}
                onChange={handlePracticeCheck}
                disabled={auto}
              />
              <label className="practice-label" htmlFor="practice">
                Practice set size
              </label>
              {sizeInputCheck && (
                <input
                  className={
                    setSizeInput >= 3
                      ? "practice-input"
                      : "practice-input input-invalid"
                  }
                  type="text"
                  value={setSizeInput}
                  disabled={auto}
                  onChange={handleNewPracticeSize}
                />
              )}
            </div>

            <div className="new-set">
              <button
                onClick={handleNewSet}
                className="new-set-button"
                disabled={auto || !started}
              >
                Next Set
              </button>
            </div>
          </form>
        </div>
      </>
    );
  }
}

export default Options;
