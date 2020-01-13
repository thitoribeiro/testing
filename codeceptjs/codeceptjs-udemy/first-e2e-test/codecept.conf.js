let config = {
  tests: "./*_test.js",
  output: "./output",
  helpers: {
    WebDriver: {
      url: "http://the-internet.herokuapp.com",
      browser: "chrome",
      windowSize: "maximize"
} },
  include: {
    I: "./steps_file.js"
  },
  bootstrap: null,
  mocha: {},
  name: "first-e2e-test",
};
if (process.profile === "chrome-ci") {
config.helpers.WebDriver.host = process.env.SELENIUM_STANDALONE_CHROME_PORT_4444_TCP_ADDR; config.helpers.WebDriver.protocol = "http";
config.helpers.WebDriver.port = 4444;
}
exports.config = config;