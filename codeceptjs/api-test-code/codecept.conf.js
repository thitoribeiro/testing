exports.config = {
	tests: "./*/*_test.js",
	output: "./output",
	helpers: {
		REST: {
			endpoint: "https://reqres.in",
			onRequest: () => {
				request.headers.auth = "123";
			}
		}
	},
	include: {},
	bootstrap: null,
	mocha: {},
	name: "api-test-code",
	plugins: {
		allure: {
			outputDir: "report",
			enabled: true
		}
	}
};