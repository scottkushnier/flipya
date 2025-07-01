import { TextEncoder, TextDecoder } from "util";
global.TextEncoder = TextEncoder;
global.TextDecoder = { prototype: TextDecoder };

import { render, fireEvent } from "@testing-library/react";
import "@testing-library/jest-dom";
import Console from "./Console";

test("Console smoke test", function () {
  render(<Console />);
});

test("Console snapshot", function () {
  const { asFragment } = render(<Console />);
  expect(asFragment()).toMatchSnapshot();
});

test("Console smoke after login", async function () {
  const { findByText, getByTestId, getByText } = render(<Console />);
  let inputElement = getByTestId("username");
  fireEvent.change(inputElement, {
    target: { value: "test" },
  });
  inputElement = getByTestId("password");
  fireEvent.change(inputElement, {
    target: { value: "test" },
  });
  let buttonElement = getByText("Register");
  expect(buttonElement).toBeInTheDocument();
  fireEvent.click(buttonElement);
});

test("Get next word", async function () {
  const { findByText, getByTestId, getByText } = render(<Console />);
  let inputElement = getByTestId("username");
  fireEvent.change(inputElement, {
    target: { value: "test" },
  });
  inputElement = getByTestId("password");
  fireEvent.change(inputElement, {
    target: { value: "test" },
  });
  let buttonElement = getByText("Register");
  expect(buttonElement).toBeInTheDocument();
  fireEvent.click(buttonElement);
  let nextButton = await findByText("NEXT");
  expect(nextButton).toBeInTheDocument();
  let prevButton = await findByText("PREV");
  expect(prevButton).toBeInTheDocument();
  ///////////////////////////////////////////////////////
  /// NEXT ///
  ///////////////////////////////////////////////////////
  fireEvent.click(nextButton);
  let foundText = await findByText("boy");
  expect(foundText).toBeInTheDocument();
  foundText = await findByText("garcon");
  expect(foundText).toBeInTheDocument();
  ///////////////////////////////////////////////////////
  /// NEXT ///
  ///////////////////////////////////////////////////////
  fireEvent.click(nextButton);
  foundText = await findByText("homme");
  expect(foundText).toBeInTheDocument();
  foundText = await findByText("man");
  expect(foundText).toBeInTheDocument();
  ///////////////////////////////////////////////////////
  /// PREV ///
  ///////////////////////////////////////////////////////
  fireEvent.click(prevButton);
  foundText = await findByText("boy");
  expect(foundText).toBeInTheDocument();
});
