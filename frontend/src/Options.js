// Function that relate to user specifications:
//    wordset to use, flip deck, practice size

import DictsApi from "./DictsApi";
import { useEffect, useState, useCallback } from "react";

let savePracticeSize = 25;

// props are 2 functions:
//    newSetFn - call to clear history & specify new word set information
//    flipDeck - call to reverse roles of language1 & language2 (comprehension vs. production)
// and auto flag
//    which tells if cards are being shown in auto running mode,
//    in which case, disable ability to modify user inputs

function Options({ newSetFn, flipDeck, auto }) {
  const [wordSets, setWordSets] = useState(null);
  const [wordSetId, setWordSetId] = useState(1);
  const [reverse, setReverse] = useState(false);
  const [practiceSize, setPracticeSize] = useState(null);

  const handleWordSetChange = (event) => {
    // console.log(event.target.value);
    // console.log(wordSets[event.target.value]);
    setWordSetId(wordSets[event.target.value].id);
    newSetFn(wordSets[event.target.value].id, reverse, practiceSize);
  };

  const handleReverse = () => {
    // newSetFn(wordSetId, !reverse, practiceSize);
    setReverse(() => !reverse);
    flipDeck();
  };

  const handlePracticeCheck = () => {
    if (!auto) {
      const newSize = practiceSize ? null : savePracticeSize;
      newSetFn(wordSetId, reverse, newSize);
      setPracticeSize(() => newSize);
    }
  };

  const handleNewPracticeSize = (e) => {
    e.preventDefault();
    if (!auto) {
      let newSize = e.target.value;
      // console.log("practice size", newSize);
      setPracticeSize(() => newSize);
      newSetFn(wordSetId, reverse, newSize);
      savePracticeSize = newSize;
    }
  };

  const noSubmit = (e) => {
    e.preventDefault();
  };

  const initNewSet = useCallback(() => {
    DictsApi.getWordSets().then((sets) => {
      setWordSets(() => sets);
      // console.log(sets);
      const id = sets[0].id;
      setWordSetId(id);
      newSetFn(id, false, null);
    });
  }, []);

  // initially, set word set to first in list of selection options
  useEffect(() => {
    initNewSet();
  }, [initNewSet]);

  // initially, set word set to first in list of selection options
  // useEffect(() => {
  //   DictsApi.getWordSets().then((sets) => {
  //     setWordSets(() => sets);
  //     // console.log(sets);
  //     const id = sets[0].id;
  //     setWordSetId(id);
  //     newSetFn(id, false, null);
  //   });
  // }, []);

  return (
    <>
      <div className="options">
        <form id="myForm" onSubmit={noSubmit}>
          <label htmlFor="sets"></label>
          {wordSets ? (
            <select
              name="sets"
              id="sets"
              onChange={handleWordSetChange}
              disabled={auto}
            >
              {wordSets.map((set, i) => (
                <option value={i} key={set.id}>
                  {set.language1} &harr; {set.language2} ({set.theme}
                  )&nbsp;&nbsp;&nbsp;
                </option>
              ))}
            </select>
          ) : null}
          <input
            className="reverse-check"
            type="checkbox"
            id="reverse"
            onChange={handleReverse}
            value={reverse}
            disabled={auto}
          />
          <label className="reverse-label" htmlFor="reverse">
            Flip deck
          </label>
          <input
            className="practice-check"
            type="checkbox"
            id="practice"
            onChange={handlePracticeCheck}
            disabled={auto}
          />
          <label className="practice-label" htmlFor="practice">
            Practice set size
          </label>
          {practiceSize != null ? (
            <input
              className={
                practiceSize >= 3
                  ? "practice-input"
                  : "practice-input input-invalid"
              }
              type="text"
              value={practiceSize}
              onChange={handleNewPracticeSize}
            />
          ) : null}
        </form>
      </div>
    </>
  );
}

export default Options;
