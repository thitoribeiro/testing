require "capybara"
require "capybara/cucumber"
require "selenium-webdriver"

Capybara.configure do |config|
    config.default_driver = :selenium
    config.app_host = "http://sas.gpnet.com.br:8205/SasTesteProjeto/" # Endereço para executar externo
    #config.app_host = "http://sas.gpnet.com.br:8205/SasTesteProjeto/" # Endereço para rodar interno
end


