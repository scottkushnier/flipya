import { render, fireEvent } from "@testing-library/react";
import "@testing-library/jest-dom";
import Console from "./Console";

jest.mock("axios");

test("Console smoke test", function () {
  render(<Console />);
});

test("Console snapshot", function () {
  const { asFragment } = render(<Console />);
  expect(asFragment()).toMatchSnapshot();
});

// test("Console smoke after login", async function () {
//   const { findByText, getByTestId, getByText } = render(<Console />);
//   const inputElement = getByTestId("password");
//   fireEvent.change(inputElement, {
//     target: { value: process.env.REACT_APP_PW },
//   });
//   const buttonElement = getByText("Login");
//   expect(buttonElement).toBeInTheDocument();
//   fireEvent.click(buttonElement);
//   const nextButton = await findByText("NEXT");
//   expect(nextButton).toBeInTheDocument();
// });

test("Get next word", async function () {
  axios.get = jest.fn((url) => {
    console.log("calling mock for: ", url);
    if (url.includes("wordset/")) {
      return Promise.resolve({
        wordset: {
          id: 12,
          language1: "English",
          language2: "Italian",
          theme: "1000",
        },
      });
    } else {
      return Promise.resolve({
        wordsets: [
          { id: 12, language1: "English", language2: "Italian", theme: "1000" },
        ],
      });
    }
  });
  const { findByText, getByTestId, getByText } = render(<Console />);
  const inputElement = getByTestId("password");
  fireEvent.change(inputElement, {
    target: { value: process.env.REACT_APP_PW },
  });
  const buttonElement = getByText("Login");
  expect(buttonElement).toBeInTheDocument();
  fireEvent.click(buttonElement);
  // const nextButton = await findByText("NEXT");
  // expect(nextButton).toBeInTheDocument();
  // fireEvent.click(nextButton);
});
