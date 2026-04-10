import { render, waitFor, fireEvent } from "@testing-library/react";
import Options from "./Options";
import "@testing-library/jest-dom";

function dummy() {}

test("Options smoke test", function () {
  render(<Options username="test" newSetFn={dummy} />);
});

test("Options snapshot", function () {
  const { asFragment } = render(<Options username="test" newSetFn={dummy} />);
  expect(asFragment()).toMatchSnapshot();
});

test("Check flip deck", async function () {
  const { getByTestId } = render(
    <Options username="test" newSetFn={dummy} flipDeck={dummy} />
  );
  await waitFor(() => {
    expect(getByTestId("reverse-checkbox")).toBeInTheDocument();
  });
  let checkbox = getByTestId("reverse-checkbox");
  expect(checkbox).toBeInTheDocument();
  fireEvent.click(checkbox);
});
