export default {
  moduleNameMapper: {
    "^@/(.*)$": "<rootDir>/src/$1",
  },
  testEnvironment: "jest-environment-jsdom",
  transform: {
    "^.+\\.[t|j]sx?$": "babel-jest",
  },
  setupFiles: [
    "/home/kushnier/share/springboard/flipya/client/src/jest.setup.js",
  ],
};
