exports.config = {
  output: './output',
  helpers: {
    WebDriver: {
      url: 'http://www.google.com.br',
      browser: 'chrome',
    }
  },
  include: {
    I: './steps_file.js'
  },
  bootstrap: null,
  teardown: null,
  gherkin: {
    features: './features/*.feature',
    steps: ['./step_definitions/steps.js'],
  },
  plugins: {
    allure: {
      enabled: true,
      output: './output',
}
  },
plugins: {
  screenshotOnFail: {
    enabled: true,
    },
  retryFailedStep: {
    enabled: true
  }
},
tests: './test/*_test.js',
  name: 'test1-codecptjs'
}