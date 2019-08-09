require "selenium-webdriver"
require "rspec"


#$txtNomeProduto = 'Portfólio 1 Consultoria Definida Thito Teste'
#$txtDescricaoProduto = 'Descrição Portfólio 1 Consultoria Definida Thito Teste'


driver = Selenium::WebDriver.for :firefox
driver.navigate.to "http://192.168.3.136:8205/SasTesteProjeto"
driver.save_screenshot("./portfolio_registration1.png")

user_login = driver.find_element(id: 'Usuario')
user_login.send_keys('thito.adm')
driver.save_screenshot("./portfolio_registration2.png")
pass_login = driver.find_element(id: 'Senha').send_keys('#Thito123')
driver.save_screenshot("./portfolio_registration3.png")
enter_login = driver.find_element(id: 'entrar').click
driver.save_screenshot("./portfolio_registration4.png")
sleep 1

menu = driver.find_element(id: 'btnMenuLateral').click
driver.save_screenshot("./portfolio_registration5.png")
sleep 1

menu = driver.find_element(id: 'btn81').click
driver.save_screenshot("./portfolio_registration6.png")
sleep 1

portfolio_submenu = driver.find_element(xpath: "/html[1]/body[1]/div[2]/div[1]/div[1]/div[2]/nav[1]/ul[1]/li[11]/ul[1]/li[2]/a[1]")
driver.save_screenshot("./portfolio_registration7.png")
sleep 1

portfolio_submenu.click
driver.save_screenshot("./portfolio_registration8.png")
sleep 2

#Localiza o elemento "Cadastrar Produto"
cadastrar_portfolio = driver.find_element(xpath: "/html[1]/body[1]/div[11]/div[1]/section[1]/div[1]/div[2]/div[1]/div[1]/div[1]/div[2]/div[1]/div[2]/div[1]/a[1]")
driver.save_screenshot("./portfolio_registration9.png")
sleep 2
# Faz o scrol da página até o elemento localizado "Cadastrar Produto"
cadastrar_portfolio.location_once_scrolled_into_view
driver.save_screenshot("./portfolio_registration10.png")
sleep 2
cadastrar_portfolio.click
driver.save_screenshot("./portfolio_registration11.png")
sleep 3

campo_nome = driver.find_element(id: 'txtNomeProduto').send_keys('Teste')
driver.save_screenshot("./portfolio_registration12.png")
sleep 3


driver.quit
