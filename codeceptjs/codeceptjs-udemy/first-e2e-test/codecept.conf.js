/*const {user, key} = {
  user: "thitoribeiro1",
  key: "Ep2R2nYAKpFh7JTLejkn",
}*/

exports.config = {
  tests: "./*/*_test.js",
  output: "./output",
  helpers: {
    WebDriver: {
      url: "http://the-internet.herokuapp.com",
      browser: "chrome",
      /*user: user,
      key: key,
      desiredCapabilities: {
        os: "osx",
        browser_version: "12",
        resolution: "1920x1080",
    }
  },
    BrowserstackHelper: {
      require: "codeceptjs-bshelper",
      user: "thitoribeiro1",
      key: "Ep2R2nYAKpFh7JTLejkn",
},*/
  REST: {}
}
},
  include: {
    I: "./steps_file.js"
  },
  bootstrap: null,
  mocha: {},
  name: "first-e2e-test"
}

