=======
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
>>>>>>> fe271a5b09328e49168ccf800aa80bb638b9a4fa
