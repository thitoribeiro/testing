Quando("eu faço login com {string} e {string}") do |usuario, senha|
    @login = LoginPage.new
    @login.go
    @login.Usuario.set usuario
    @login.Senha.set senha
    @login.acessar.click
  end
  
  #Então("devo ser autenticado") do
    #pending # Write code here that turns the phrase above into concrete actions
 # end
  
  #Então("acessar a tela principal do sistema") do
 #  pending # Write code here that turns the phrase above into concrete actions
 # end