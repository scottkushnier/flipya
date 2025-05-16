import { useState, useRef, useEffect } from "react";
// import { act } from "@testing-library/react";
import { Card, Config } from "./Card";

import FlipyaDB from "./FlipyaDB";
import wordData from "./wordData";
import Options from "./Options";
import EmailSession from "./EmailSession";
import Login from "./Login";

const DEFAULT_SPEED = 60;

// functions to get transform delays depending on speed setting

function newWordTransform(s) {
  // console.log("new word speed: ", s);
  const delay = 950 - 8 * s;
  return "transform " + delay + "ms";
}

function flipCardTransform(s) {
  // console.log("flip card speed: ", s);
  const delay = (1300 - 8 * s) * 0.7;
  return "transform " + delay + "ms";
}

function roundTiming(s) {
  // console.log("round speed: ", s);
  const delay = 5000 - 40 * s;
  return delay;
}

// if card is flipped & user wants prev/next word, then first flip back, then go to next/prev
// after short delay:
function delayAfterFlipBackUntilNewWord(s) {
  const delay = (1300 - 8 * s) * 0.7;
  return delay;
}

//---------------------------------------------------------------------------------

// before start, initial word to display on card, e.g. "ready, set..."
const INITIAL_WORD = "(click NEXT to begin)";

function Console() {
  // States here become props in Card & Options elements

  // console.log("Rendering console here.");

  // card config controlled by console UI
  const [topWord, setTopWord] = useState("");
  const [bottomWord, setBottomWord] = useState(INITIAL_WORD);
  const [flipWord, setFlipWord] = useState(INITIAL_WORD);
  const [config, setConfig] = useState(Config.ShowBottomWord);

  const [wordsetId, setWordsetId] = useState(0);
  // show native language on front or back (reverse)
  const [reverse, setReverse] = useState(false);
  // when it's flipped, saves where to flip back to
  const [saveFrontConfig, setSaveFrontConfig] = useState(Config.ShowBottomWord);
  const [cardColor, setCardColor] = useState("cornsilk");
  const [started, setStarted] = useState(false);
  const [atFirstWord, setAtFirstWord] = useState(true);

  // auto mode settings
  const [auto, setAuto] = useState(false);
  // autoInterval is the process that keeps cards flipping & dealing automatically
  const [autoInterval, setAutoInterval] = useState(null);
  const [runId, setRunId] = useState(0);
  const [speed, setSpeed] = useState(DEFAULT_SPEED);
  const [quickChange, setQuickChange] = useState(false);
  const [fadeOut, setFadeOut] = useState(false);

  // options
  const [loggedIn, setLoggedIn] = useState(false);
  const [user, setUser] = useState(null);

  // save some refs since don't want to work with outdated values
  const topWordRef = useRef();
  topWordRef.current = topWord;
  const bottomWordRef = useRef();
  bottomWordRef.current = bottomWord;
  const configRef = useRef();
  configRef.current = config;
  const speedRef = useRef();
  speedRef.current = speed;
  const autoRef = useRef();
  autoRef.current = auto;
  const autoIntervalRef = useRef();
  autoIntervalRef.current = autoInterval;
  const runIdRef = useRef();
  runIdRef.current = runId;
  const saveFrontConfigRef = useRef();
  saveFrontConfigRef.current = saveFrontConfig;

  const flip = () => {
    // console.log(
    //   "FLIP: config-current: ",
    //   configRef.current,
    //   "config: ",
    //   config
    // );
    if (configRef.current === Config.Flipped) {
      setConfig(() => saveFrontConfigRef.current);
    } else {
      setSaveFrontConfig(configRef.current);
      setConfig(() => Config.Flipped);
    }
  };

  const nextWord = () => {
    let currentConfig = configRef.current;
    // console.log("currentConfig: ", currentConfig);
    // if doing next when card is flipped, then flip back & then do right
    if (currentConfig === Config.Flipped) {
      // console.log("first flip back");
      flip();
      const delay = delayAfterFlipBackUntilNewWord(speedRef.current);
      setTimeout(nextWord, delay); // try again after delay
      return;
    }
    // -next- when showing bottom word, need to do fancy footwork here to make smooth scroll
    if (currentConfig === Config.ShowBottomWord) {
      // console.log("showing bottom word");
      wordData.getNextWord(wordsetId, reverse).then((word) => {
        setQuickChange(() => true);
        // console.log("setting top word to: ", bottomWordRef.current);
        setTopWord(bottomWordRef.current); // put current word (at bottom) at top position
        setConfig(Config.ShowTopWord); // and -quickly- switch to showing top
        // console.log("setting bottom word to: ", word.word1);
        setBottomWord(word.word1); // put new word below...
        if (process.env.NODE_ENV !== "test") {
          setTimeout(() => {
            setQuickChange(() => false);
            // myTextBox.style.transition = saveTransform;
            setConfig(Config.ShowBottomWord); // then -slowly- scroll up to show new word
          }, 50);
        } else {
          setConfig(Config.ShowBottomWord);
        }
        setTimeout(() => {
          setFlipWord(word.word2); // don't forget to put word on reverse side too
          // console.log("set flip word to: ", word.word2);
        }, 500);
      });
      if (!started) {
        setStarted(true);
      }
    } else {
      // console.log("was showing top word");
      // if was showing top word, then just scroll back to position...
      setConfig(Config.ShowBottomWord);
      // ... but make sure word on reverse is for correct word
      wordData.getNextWord(wordsetId, reverse).then((word) => {
        setFlipWord(word.word2);
      });
    }
    if (!wordData.noMoreHistory()) {
      setAtFirstWord(() => false);
    }
  };

  // basically, just like function above, but in reverse direction
  const backOneWord = () => {
    if (wordData.noMoreHistory()) {
      // button should be disabled, but be careful anyway
      return;
    }
    let currentConfig = configRef.current;
    // if doing prev when card is flipped, then flip back & then do right
    if (currentConfig === Config.Flipped) {
      flip();
      const delay = delayAfterFlipBackUntilNewWord(speedRef.current);
      setTimeout(backOneWord, delay);
      return;
    }
    // prev when showing top word, need to do fancy footwork here to make smooth scroll -downward-
    if (currentConfig === Config.ShowTopWord) {
      wordData.getPreviousWord(wordsetId, reverse).then((word) => {
        setQuickChange(() => true);
        setBottomWord(topWord); // put current word (at top) at bottom position
        setConfig(Config.ShowBottomWord); // then -quickly- switch to showing bottom
        setTopWord(word.word1);
        if (process.env.NODE_ENV !== "test") {
          setTimeout(() => {
            setQuickChange(() => false);
            setConfig(Config.ShowTopWord);
          }, 50);
        } else {
          setConfig(Config.ShowTopWord);
        }
        setTimeout(() => {
          setFlipWord(word.word2); // and set word on flip side too
        }, 500);
      });
    } else {
      // if was showing bottom word, then just scroll back to position...
      setConfig(Config.ShowTopWord);
      // .. but make sure flipped word matches
      wordData.getPreviousWord(wordsetId, reverse).then((word) => {
        setFlipWord(word.word2);
      });
    }
    if (wordData.noMoreHistory()) {
      setAtFirstWord(() => true);
    }
  };

  // do one round of showing card, flipping to show reverse,
  //  & flip again to show front again
  const doRound = (runIdForRound) => {
    // console.log(
    //   "do round: for-round: ",
    //   runIdForRound,
    //   " current: ",
    //   runIdRef.current,
    //   runId
    // );
    if (runIdForRound !== runIdRef.current) {
      return;
    }
    if (!autoRef.current) {
      // console.log("stopped, stopping interval: ", autoIntervalRef.current);
      stopInterval(autoIntervalRef.current);
      return;
    }
    flip();
    setTimeout(() => {
      if (runIdForRound === runIdRef.current) {
        if (autoRef.current) {
          flip();
        } else {
          stopInterval(autoIntervalRef.current);
        }
      }
    }, roundTiming(speedRef.current));
    setTimeout(() => {
      if (runIdForRound === runIdRef.current) {
        if (autoRef.current) {
          nextWord();
        } else {
          stopInterval(autoIntervalRef.current);
        }
      }
    }, roundTiming(speedRef.current) * 1.5);
  };

  const newInterval = (interval) => {
    if (autoIntervalRef.current) {
      // console.log(
      //   "already had interval going, clearing old: ",
      //   autoIntervalRef.current
      // );
      clearInterval(autoIntervalRef.current);
    }
    setAutoInterval(interval);
  };

  const stopInterval = (interval) => {
    if (interval) {
      // console.log("clearing old interval: ", interval);
      clearInterval(interval);
    }
    setAutoInterval(null);
  };

  const doGo = () => {
    let delayBeforeFullRound = 0;
    if (!started) {
      nextWord();
      delayBeforeFullRound = roundTiming(speedRef.current);
      // } else if (configRef.current === Config.ShowTopWord) {
      //   delayBeforeFullRound = roundTiming(speedRef.current);
      //   nextWord();
    } else if (configRef.current === Config.Flipped) {
      // console.log("flip back first");
      delayBeforeFullRound = roundTiming(speedRef.current);
      nextWord();
    }
    const newId = runId + 1;
    setRunId(newId);
    setTimeout(() => {
      doRound(newId);
      const myInterval = setInterval(() => {
        doRound(newId);
      }, roundTiming(speedRef.current) * 2.5);
      // console.log("starting interval: ", myInterval);
      newInterval(myInterval);
    }, delayBeforeFullRound);
  };

  const doStop = () => {
    stopInterval(autoIntervalRef.current);
  };

  const stopGo = () => {
    if (!auto) {
      doGo();
    } else {
      doStop();
    }
    setAuto(() => !auto);
  };

  // clear & get ready for new word set
  function newWordSetFunction(id, reverseVal, practiceSize) {
    // console.log("new word set, practice size: ", practiceSize);
    if (!id) {
      // console.log("no id in newWordSetFunction");
      return;
    }
    setStarted(false);
    setAtFirstWord(true);
    wordData.clearWordInfo();
    wordData.setPracticeSize(+practiceSize);
    // console.log("new set function: ", id, reverseVal);
    setConfig(Config.ShowBottomWord);
    setBottomWord(INITIAL_WORD);
    setFlipWord(INITIAL_WORD);
    setWordsetId(id);
    setReverse(reverseVal);
    FlipyaDB.getWordSet(id).then((wordset) => {
      setCardColor(wordset.color);
    });
  }

  // on flip deck, fade out one language & fade in other language
  // need special logic depending if showing top or bottom word

  function flipDeckBottom() {
    // console.log("flip deck bottom");
    setFadeOut(() => true);
    setTimeout(() => {
      setConfig(Config.ShowBottomWord);
      let saveBottom = bottomWord;
      setBottomWord(flipWord);
      setFlipWord(saveBottom);
      setFadeOut(() => false);
    }, 550);
    // console.log("top word: ", topWordRef.current);
    wordData.getPreviousWord(wordsetId, reverse).then((word) => {
      // console.log("prev word: ", word);
      if (word) {
        setTopWord(word.word2);
        wordData.getNextWord(wordsetId, reverse);
      }
    });
    setReverse(!reverse);
  }

  function flipDeckTop() {
    setFadeOut(() => true);
    setTimeout(() => {
      setConfig(Config.ShowTopWord);
      let saveTop = topWord;
      setTopWord(flipWord);
      setFlipWord(saveTop);
      setFadeOut(() => false);
    }, 550);
    wordData.getNextWord(wordsetId, reverse).then((word) => {
      // console.log("next word: ", word);
      setBottomWord(word.word2);
      wordData.getPreviousWord(wordsetId, reverse);
    });
    setReverse(!reverse);
  }

  function flipDeck() {
    // console.log("config:flip: ", showConfig(configRef.current));
    if (configRef.current === Config.ShowBottomWord) {
      flipDeckBottom();
    } else {
      flipDeckTop();
    }
  }

  // first check if card is flipped, then flip back & then flip deck
  function flipDeckGeneral() {
    // console.log("config:gen: ", showConfig(configRef.current));
    if (configRef.current === Config.Flipped) {
      flip();
      const delay = delayAfterFlipBackUntilNewWord(speedRef.current);
      setTimeout(flipDeck, delay);
      return;
    } else {
      flipDeck();
    }
  }

  const enterFn = (username) => {
    // console.log("calling enter function");
    setUser(username);
    setSpeed(DEFAULT_SPEED);
    // console.log("setting user for: ", username);
    FlipyaDB.getUser(username).then((ret) => {
      // console.log("user profile: ", ret.user);
    });
    setLoggedIn(true);
  };

  const exitFn = () => {
    setLoggedIn(false);
  };

  /////////////////////////////////////////////////////////////////////////

  const handleSpeedChange = (e) => {
    e.preventDefault();
    // console.log("speed: ", e.target.value);
    const speed = e.target.value;
    setSpeed(() => speed);
  };

  //////////////////////////////////////////////////////////////////////

  const logout = (e) => {
    e.preventDefault();
    stopInterval(autoIntervalRef.current); // just in case interval still running
    // console.log("logout");
    exitFn();
  };

  ////////////////////////////////////////////////////////////////////

  if (!loggedIn) {
    return <Login enterFn={enterFn} />;
  } else {
    return (
      <>
        <div className="main">
          <div className="console">
            <h2 className="title"> FLIP YA, {user.toUpperCase()}! </h2>
            <Card
              topWord={topWord}
              bottomWord={bottomWord}
              flipWord={flipWord}
              config={config}
              color={cardColor}
              flipSpeed={flipCardTransform(speed)}
              scrollSpeed={newWordTransform(speed)}
              fadeOut={fadeOut}
              quickChange={quickChange}
              flipFn={flip}
            />
            {!auto && (
              <div className="prev-next-row">
                <button
                  onClick={backOneWord}
                  className="prev-button"
                  disabled={atFirstWord}
                >
                  PREV
                </button>
                <button
                  onClick={nextWord}
                  className="next-button"
                  id="next-button"
                >
                  NEXT
                </button>
              </div>
            )}
            {auto ? (
              <div className="go-row">
                <button onClick={stopGo} className="stop-button">
                  STOP
                </button>
              </div>
            ) : (
              <div className="go-row">
                <button onClick={stopGo} className="go-button">
                  GO
                </button>
              </div>
            )}
            {!auto ? (
              <form>
                <div className="speed-row">
                  <label htmlFor="speed" className="speed-label">
                    Speed
                  </label>
                  <input
                    type="range"
                    className="speed-input"
                    id="speed"
                    name="speed"
                    min="20"
                    max="100"
                    value={speed}
                    onChange={handleSpeedChange}
                  />
                </div>
              </form>
            ) : (
              <div style={{ height: "6vw" }}> </div>
            )}
          </div>
          <div className="right-side-controls">
            <Options
              newSetFn={newWordSetFunction}
              flipDeck={flipDeckGeneral}
              auto={auto}
              started={started}
              username={user}
            />
            <EmailSession username={user} started={started} />
            <div>
              <button
                className="logout-button"
                onClick={logout}
                disabled={auto}
              >
                Logout
              </button>
            </div>
          </div>
        </div>
      </>
    );
  }
}

export default Console;
