require 'selenium-webdriver'
require 'rspec'

describe 'Login' do

    before(:each) do
        geckodriver = File.join(Dir.pwd, 'vendor', 'geckodriver')
        @driver = Selenium::Webdriver.for :firefox, driver_path: geckodriver
    end

    after(:each) do
        @driver.quit
    end

    it 'failed' do
        @driver.get 'http://192.168.3.136:8205/SasTesteProjeto'
        @driver.fid_element(id: 'Usuario').send_keys('fail.user')
        @driver.fid_element(id: 'Senha').send_keys('#Thito123')
        @driver.find_element(id: 'entrar').click
        expect(@driver.find_element(css: '.toast-message1').displayed?).to eql true
  
    end

    #it 'succeeded' do
      #@driver.get 'http://192.168.3.136:8205/SasTesteProjeto'
      #@driver.fid_element(id: 'Usuario').send_keys('thito.adm')
      #@driver.fid_element(id: 'Senha').send_keys('#Thito123')
      #@driver.find_element(id: 'entrar').click
      #@driver.find_element(class: 'welcome').eql to 'Bem vindo,'

    #end

end


















require "selenium-webdriver"
require "rspec"


driver = Selenium::WebDriver.for :firefox
driver.navigate.to "http://192.168.3.136:8205/SasTesteProjeto"
#driver.save_screenshot("./portfolio_registration1.png")

user_login = driver.find_element(id: 'Usuario')
user_login.send_keys('thito.adm')
#driver.save_screenshot("./portfolio_registration2.png")
pass_login = driver.find_element(id: 'Senha').send_keys('#Thito123')
#driver.save_screenshot("./portfolio_registration3.png")
enter_login = driver.find_element(id: 'entrar').click
#driver.save_screenshot("./portfolio_registration4.png")
sleep 1

menu = driver.find_element(id: 'btnMenuLateral').click
#driver.save_screenshot("./portfolio_registration5.png")
sleep 5

driver.quit