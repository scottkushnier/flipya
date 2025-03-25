import { render } from "@testing-library/react";
import Options from "./Options";

test("Options smoke test", function () {
  render(<Options />);
});

test("Options snapshot", function () {
  const { asFragment } = render(
    <Options
      newSetFn={() => {
        return;
      }}
    />
  );
  expect(asFragment()).toMatchSnapshot();
});
