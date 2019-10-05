#language: pt

Funcionalidade: Login
    Para que eu possa gerenciar os filmes do catálogo NinjaFlix
    Sendo um usuário previamente cadastrado
    Posso acessar o sistema com o meu email e senha

@access
Cenário: Acesso
    Quando eu faço login com "thito.ribeiro@hotmail.com" e "pwd123"
    Então devo ser autenticado
    E devo ver "Thito Ribeiro" na área logada

@noaccess
Esquema do Cenário: Login sem sucesso
  Quando eu faço login com <email> e <senha>
  Então não devo ser autenticado
  E devo ver a mensagem de alerta <texto>

  Exemplos:
  |email                      |senha   |texto                         | 
  |"thito.ribeiro@hotmail.com"|"abc123"|"Usuário e/ou senha inválidos"|
  |"email@email.com"          |"abc123"|"Usuário e/ou senha inválidos"|
  |""                         |"abc123"|"Opps. Cadê o email?"         |
  |"teste@hotmail.com"        |""      |"Opps. Cadê a senha?"         |
