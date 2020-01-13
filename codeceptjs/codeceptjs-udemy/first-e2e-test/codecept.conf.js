exports.config = {
  tests: "./*_test.js",
  output: "./output",
  helpers: {
    WebDriver: {
      url: "http://the-internet.herokuapp.com",
      browser: "chrome",
},
REST: {} },
  include: {
    I: "./steps_file.js"
  },
  bootstrap: null,
  mocha: {},
  name: "e2e-tests",
};