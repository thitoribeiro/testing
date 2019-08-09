require "selenium-webdriver"
require "rspec"
require "chromedriver-helper"

driver = Selenium::WebDriver.for :firefox
driver.navigate.to "http://192.168.3.136:8205/SasTesteProjeto"

user_login = driver.find_element(id: 'Usuario')
user_login.send_keys('thito.adm')
sleep 2
pass_login = driver.find_element(id: 'Senha').send_keys('#Thito123')
sleep 2
enter_login = driver.find_element(id: 'entrar').click
sleep 2
menu = driver.find_element(id: 'btnMenuLateral').click
sleep 2
menu = driver.find_element(id: 'btn81').click
sleep 2
portfolio_submenu = driver.find_element(xpath: "/html[1]/body[1]/div[2]/div[1]/div[1]/div[2]/nav[1]/ul[1]/li[11]/ul[1]/li[2]/a[1]")
portfolio_submenu.click
sleep 5
driver.quit

