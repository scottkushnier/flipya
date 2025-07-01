import { render } from "@testing-library/react";
import EmailSession from "./EmailSession";

test("EmailSession smoke test", function () {
  render(<EmailSession username="test" started={true} />);
});

test("EmailSession snapshot", function () {
  const { asFragment } = render(
    <EmailSession username="test" started={true} />
  );
  expect(asFragment()).toMatchSnapshot();
});
