require 'capybara/cucumber'
require 'selenium-webdriver'

Capybara.configure do |config|
    #selenium       selenium_chrome     selenium_chrome_headless
    config.default_driver = :selenium
    config.app_host = 'https://www.nerdin.com.br'
    config.default_max_wait_time = 5
end