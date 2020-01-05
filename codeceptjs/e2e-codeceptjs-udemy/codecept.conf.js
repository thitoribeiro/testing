exports.config = {
  tests: "./*_test.js",
  output: "./output",
  helpers: {
  WebDriver: {
  url: "http://the-internet.herokuapp.com",
  browser: "safari", //Browser to be tested
  desiredCapabilities: { //Browserstack settings
  browser_version: "12",
  resolution: "1920x1080",
  project: "practical-e2e-testing"
  },
  user: "thitoribeiro1", //Browserstack user
  key: "Ep2R2nYAKpFh7JTLejkn" //Brouserstack key
  },
  BrowserstackHelper: {
  require: "codeceptjs-bshelper",
  user: "thitoribeiro1",
  key: "Ep2R2nYAKpFh7JTLejkn"
  },
  REST: {}
  },
  include: {
  I: "./steps_file.js"
  },
  bootstrap: null,
  mocha: {},
  name: "e2e-codeceptjs-udemy",
  };