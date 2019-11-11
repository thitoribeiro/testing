exports.config = {
	tests: "./*/*_test.js",
	output: "./output",
	helpers: {
		REST: {
			endpoint: "https://swapi.co",
			onRequest: () => {
				
			}
		}
	},
	include: {},
	bootstrap: null,
	mocha: {},
	name: "Easynvest API Test",
	plugins: {
		allure: {
			outputDir: "report",
			enabled: false
		}
	}
};