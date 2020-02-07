exports.config = {
tests: "./*/*_test.js",
	output: "./output",
	helpers: {
		REST: {
			endpoint: "http://apis-internal.hom.easynvest.io/powerpoint",
			onRequest: (request) => {
			request.headers.authorization =
				"Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1bmlxdWVfbmFtZSI6IjM1ODA1MjU3ODY2IiwibmFtZWlkIjoiMzU4MDUyNTc4NjYiLCJnaXZlbl9uYW1lIjoiTk9NRSBDTElFTlRFIDM1ODA1MjU3ODY2IiwidmVyc2lvbiI6InYxIiwiaWF0IjoiMTU4MTA4MzQ1NyIsImVtYWlsIjoiaW5mb3JtYXRpY2FAdGl0dWxvLmNvbS5iciIsImNsaSI6IntcIkNsaWVudElkXCI6XCI4NzZkYWIyMTkwNDY0ODg0YmY5YjA5MmFhMTQwNzU4NVwiLFwiTmFtZVwiOlwiUG9ydGFsL0hvbWUgQnJva2VyXCIsXCJJbnRlcm5hbFwiOmZhbHNlfSIsImFjYyI6IjUwODIxMDMiLCJlc2ciOiJBTDFsTnZJRlhzdjRuNjRJRVB6aEtvY0FBZTN3bW1kTVRtWTd5VlRuN2p5R2VZUUFxQUE9IiwiYWR2IjoiODAiLCJjaWEiOiIxMC4xMC4xMDQuMTk2IiwiaXNzIjoiaHR0cDovL3NlcnZpY2VzLWhvbW9sb2cuZWFzeW52ZXN0LmNvbS5ici9hdXRoIiwiYXVkIjoiaHR0cDovL3NpdGUtaG9tb2xvZy5lYXN5bnZlc3QuY29tLmJyIiwiZXhwIjoxNTgxMTEyMjU3fQ.KHygi4wDn2g4kcR1XdzVHt6HhzSsqvhrKHQTz68GHsA";
				
			}
		}
	},
	include: {},
	bootstrap: null,
	mocha: {},
	name: "Personalinfo API Test",
	plugins: {
		allure: {
			outputDir: "report",
			enabled: false
		}
	}
};
