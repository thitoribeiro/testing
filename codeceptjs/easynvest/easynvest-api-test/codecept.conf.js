exports.config = {
  output: './output',
  helpers: {
    REST: {
      endpoint: 'https://swapi.co',
      onRequest: () => {
      }
    }
  },
  include: {},
  mocha: {},
  bootstrap: null,
  teardown: null,
  hooks: [],
  gherkin: {
    features: './features/*.feature',
    steps: ['./step_definitions/steps.js']
  },
  plugins: {
    screenshotOnFail: {
      enabled: true
    },
    allure: {
      outputDir: 'report',
      enabled: false
    }
  },
  tests: './*/*_test.js',
  name: 'Easynvest API Test'
}