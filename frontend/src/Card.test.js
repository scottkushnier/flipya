import { render } from "@testing-library/react";
import { Card, Config } from "./Card";

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
