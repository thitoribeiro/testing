#language: pt

Funcionalidade: Cadastro de filmes
  Para que eu possa disponibilizar novos títulos no catálogo
  Sendo um gestor de catálogo
  Posso cadastrar um novo filme

  Cenario: Filme disponivel
    Dado que "Vingadores ultimato" é um novo filme
    E o status deste filme é "Disponível"
    E o ano de lançamento é "2019"
    E a data de estréia é "24/04/2019"
    E os atores são "Robert Downey Jr, Chris evans, Brie Larson, Scarlett Johansson"
    E a sinopse do filme é "Após Thanos eliminar metade do universo, os vingadores terão que resolver esta treta."
    E escolhi uma capa muito bonita
    Quando eu faço o cadastro deste filme
    Então devo ver o novo filme na lista 

  Cenario: Filme em pré venda
    Dado que "Homem Aranha Longe de Casa" é um novo filme
    E o status desde filme é "Prévenda"
    E o ano de lançamento é "2019"
    E a data de estréia é "04/07/2019"
    E os atores são "Tom Holland, Samuel L. Jackson, Marisa Tomei"
    E a sinopse do filme é "Peter Parker está em uma viagem pela Europa e é convocado por Nick Fury para uma missão."
    E escolhi uma capa muito bonita
    Quando eu faço o cadastro deste filme
    Então deve ser o novo filme na lista

  Cenario: Filme em breve
    Dado que "Coringa" é um novo filme
    E o status deste filme é "Em breve"
    E o ano de lançamento é "2019"
    E o satores são "Joaquim Phoenix"
    E a sinopse do filme é "O comediante falido Arthur Fleck encontra violentos bandidos pelas ruas de Gotham city."
    Quando eu faço o cadastro deste filme
    Então devo ver o novo filme na lista

  Cenario: Sem nome
    Quando eu tento cadastrar um filme sem o nome
    Então devo ver a notificação "Oops - Filme sem título. Pode isso Arnaldo?"

  Cenario: Sem status
    Quando eu tento cadastrar um filme sem o status
    Então devo ver a notificação "Oops - O status deve ser informado!"

  Cenario: Ano de lançamento não informado
    Quando eu tento cadastrar um filme sem ano de lançamento
    Então devo ver a notificação "Oops - Faltou o ano de lançamento também!"

  Cenario: Data de estréia não informada
    Quando eu tento cadastrar um filme sem a data de estréia
    Então devo ver a notificação "Oops - Quase lá, só falta a data de estréia!"

  Cenario: Duplicado
    Dado que "Deadpool 2" já foi cadastrado
    Quando eu faço o cadastro deste filme 
    Então devo ver a notificação "Oops - Este filme já existe no Ninjaflix."
