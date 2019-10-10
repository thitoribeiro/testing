require "selenium-webdriver"

driver = Selenium::WebDriver.for :chrome
driver.navigate.to "https://formy-project.herokuapp.com/datepicker"

datefield = driver.find_element(id: 'datepicker')
datefield.send_keys('13/09/2019')
datefield.send_keys :return