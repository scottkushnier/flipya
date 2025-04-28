import { render, fireEvent } from "@testing-library/react";
import { Card, Config } from "./Card";
import "@testing-library/jest-dom";

test("Card smoke test", function () {
  render(
    <Card
      topWord="again"
      bottomWord="boy"
      flipWord="encore"
      config={Config.ShowTopWord}
      color="pink"
      flipFn={() => {
        return;
      }}
    />
  );
});

test("Card snapshot", function () {
  const { asFragment } = render(
    <Card
      topWord="boy"
      bottomWord="girl"
      flipWord="garcon"
      config={Config.ShowTopWord}
      color="blue"
      flipFn={() => {
        return;
      }}
    />
  );
  expect(asFragment()).toMatchSnapshot();
});

test("Card snapshot show bottom", function () {
  const { asFragment } = render(
    <Card
      topWord="boy"
      bottomWord="girl"
      flipWord="garcon"
      config={Config.ShowBottomWord}
      color="blue"
      flipFn={() => {
        return;
      }}
    />
  );
  expect(asFragment()).toMatchSnapshot();
});

test("Card snapshot show flipped", function () {
  const { asFragment } = render(
    <Card
      topWord="boy"
      bottomWord="girl"
      flipWord="garcon"
      config={Config.Flipped}
      color="blue"
      flipFn={() => {
        return;
      }}
    />
  );
  expect(asFragment()).toMatchSnapshot();
});

test("Card test click", async function () {
  let word = "boy";
  let { getByTestId, findByText, rerender } = render(
    <Card
      topWord={word}
      bottomWord="girl"
      flipWord="garcon"
      config={Config.ShowBottomWord}
      flipFn={() => {
        // console.log("word: ", word);
        word = "man";
        // console.log("word: ", word);
      }}
    />
  );
  let foundText = await findByText("boy");
  expect(foundText).toBeInTheDocument();
  const card = getByTestId("card");
  fireEvent.click(card);
  rerender(
    <Card
      topWord={word}
      bottomWord="girl"
      flipWord="garcon"
      config={Config.ShowBottomWord}
      flipFn={() => {}}
    />
  );
  foundText = await findByText("man");
  expect(foundText).toBeInTheDocument();
});
