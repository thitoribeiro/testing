#Arquivo de configuração
require 'cucumber'
require 'selenium-webdriver'
require 'rspec'

#utilizar o driver do browser para o selenium
driver = Selenium::WebDriver.for :firefox #ou qualquer driver de outro browser disponível para selenium

depois de executar sair do driver/fechar browser
After do 
 quit.driver
end