require "selenium-webdriver"

driver = Selenium::WebDriver.for :chrome
driver.navigate.to "https://formy-project.herokuapp.com/scroll"

name = driver.find_element(id: 'name')
driver.action.move_to(name)
sleep 2
name = driver.find_element(id: 'name').send_keys('Thito Ribeiro')
sleep 2
date = driver.find_element(id: 'date')
date.send_keys('13/09/2020')
sleep 2