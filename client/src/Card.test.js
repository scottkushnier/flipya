import { useState } from "react";
import { render, fireEvent } from "@testing-library/react";
import { Card, Config } from "./Card";
import "@testing-library/jest-dom";

function mockFlipFn() {
  return;
}

test("Card smoke test", function () {
  render(
    <Card
      topWord="again"
      bottomWord="boy"
      flipWord="encore"
      config={Config.ShowTopWord}
      color="pink"
      flipFn={mockFlipFn}
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
      flipFn={mockFlipFn}
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
      flipFn={mockFlipFn}
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
      flipFn={mockFlipFn}
    />
  );
  expect(asFragment()).toMatchSnapshot();
});

test("Card test click", async function () {
  function CardWrapper() {
    const [word, setWord] = useState("boy");
    return (
      <Card
        topWord={word}
        bottomWord="girl"
        flipWord="garcon"
        config={Config.ShowBottomWord}
        flipFn={() => {
          setWord("man");
        }}
      />
    );
  }

  const { getByTestId, findByText } = render(<CardWrapper />);

  let foundText = await findByText("boy");
  expect(foundText).toBeInTheDocument();

  const card = getByTestId("card");
  fireEvent.click(card);

  foundText = await findByText("man");
  expect(foundText).toBeInTheDocument();
});
