require 'selenium-webdriver'
require 'rspec'

describe 'Login' do

    before(:each) do
        
        @driver = Selenium::Webdriver.for :firefox
        @driver.manage.delete_all_cookies
    end
    
    after(:each) do |test|
        if test.failed?
          @browser.screenshot.save (test.fail+".png")
          embed(test.fail+".png", 'image/png')
        elsif 
          @browser.screenshot.save (test.success+".png")
          embed(test.success+".png", 'image/png')
    end
       
    it 'succeeded' do
      @driver.get 'http://sas.gpnet.com.br:8205/SasTesteProjeto'
      @driver.fid_element(id: 'Usuario').send_keys('thito.adm1')
      @driver.fid_element(id: 'Senha').send_keys('#Thito123')
      @driver.find_element(id: 'entrar').click
      @driver.find_element(class: 'welcome').eql to 'Bem vindo,'

    end

end
end

















