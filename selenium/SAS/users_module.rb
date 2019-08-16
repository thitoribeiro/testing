require "selenium-webdriver"
require "rspec"

driver = Selenium::WebDriver.for :firefox
driver.navigate.to "http://sas.gpnet.com.br:8205/SasTesteProjeto"
driver.save_screenshot("./portfolio_registration1.png")

user_login = driver.find_element(id: 'Usuario')
user_login.send_keys('thito.adm')
driver.save_screenshot("./portfolio_registration2.png")
pass_login = driver.find_element(id: 'Senha').send_keys('#Thito123')
driver.save_screenshot("./portfolio_registration3.png")
enter_login = driver.find_element(id: 'entrar').click
driver.save_screenshot("./portfolio_registration4.png")
sleep 1

menu_lateral = driver.find_element(id: 'btnMenuLateral').click
driver.save_screenshot("./portfolio_registration5.png")

menu_usuarios = driver.find_element(id: 'btn1').click
driver.save_screenshot("./portfolio_registration6.png")
sleep 1

submenu_usuario = driver.find_element(xpath: "/html[1]/body[1]/div[2]/div[1]/div[1]/div[2]/nav[1]/ul[1]/li[13]/ul[1]/li[3]/a[1]").click
sleep 1

cadastrar_usuario = driver.find_element(xpath: "/html[1]/body[1]/div[11]/div[1]/section[1]/form[1]/div[1]/div[2]/div[1]/div[1]/div[1]/div[2]/div[1]/div[4]/div[1]/div[1]/a[1]").click
sleep 1

nivel_usuario = driver.find_element(id: "ddlNivelUsuario").click
sleep 1

opcao_nivel = driver.find_element(xpath: "//option[contains(text(),'Administrador de sistema')]").click
sleep 1

login_usuario = driver.find_element(id: "txtLogin").send_key('thito.adm')
sleep 1

senha_usuario = driver.find_element(id: "txtSenhaInicialUsuario").send_key('123mudar')
sleep 1

cpf_usuario = driver.find_element(id: "txtCPF").send_key('522.498.260-05')
sleep 1

genero_usuario = driver.find_element(id: "ddlSexo").click
sleep 1

opcao_genero = driver.find_element(xpath: "//option[contains(text(),'Masculino')]").click
sleep 1

nascimento_usuario = driver.find_element(id: "txtDataNascimento").send_key('01/01/1999')
nascimento_usuario = driver.find_element(id: "txtDataNascimento").send_key :tab
sleep 1

pais_usuario = driver.find_element(id: "ddlPais").send_key :tab
sleep 1

uf_usuario = driver.find_element(id: "ddlUfCliente").send_key :tab
sleep 1

cidade = driver.find_element(id: "acCidade")
cidade.send_keys('Vila Velha')
sleep 3
cidade_result = driver.find_element(id: '2044').click
sleep 1
#driver.quit