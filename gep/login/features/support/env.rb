require "capybara"
require "capybara/cucumber"
require "selenium-webdriver"

Capybara.configure do |config|
  config.default_driver = :selenium
  config.app_host = "http://192.168.3.136:8205" # Acessing from inside
  config.app_host = "http://sas.gpnet.com.br:8205/" # Acessing from outside
end