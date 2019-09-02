#language: pt
#Gherkin Syntax
Funcionalidade: Inclusão de pessoa no processo
  Eu como usuário, desejo incluir uma nova pessoa em um processo

  @sucesso
  Cenario: Incluir pessoa com sucesso
    Dado que estou na tela de inclusão de pessoa
    Quando inserir uma 'Pessoa'
    E inserir um tipo de 'Parte'
    E clicar em salvar
    Entao o sistema apresenta a mensagem "Pessoa salva no processo"

 @insucesso
  Cenario: Incluir pessoa com falha
    Dado que estou na tela de inclusão de pessoa
    Quando inserir uma 'Pessoa'
    E inserir um tipo de 'Parte'
    E clicar em salvar
    Entao o sistema apresenta a mensagem "Pessoa salva no processo"

@cancelar
  Cenario: Cancelar pessoa com sucesso
    Dado que estou na tela de inclusão de pessoa
    Quando inserir uma 'Pessoa'
    E inserir um tipo de 'Parte'
    E clicar em cancelar
    Entao o sistema apresentará a mensagem "Cancelado com sucesso"