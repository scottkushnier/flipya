import { render } from "@testing-library/react";
import Console from "./Console";

test("Console smoke test", function () {
  render(<Console />);
});

test("Console snapshot", function () {
  const { asFragment } = render(<Console />);
  expect(asFragment()).toMatchSnapshot();
});
