#Sucesso
Dado("que estou na tela de inclusão de pessoa") do
    driver.navigate.to "url_sistema/tela_inclusão_Pessoa"
  end
  
  Quando("inserir uma {string}") do |Pessoa|
    campo_pessoa = driver.find_element(id: 'Pessoa').send_keys('Nathalia Peruzzo')
  end
  
  Quando("inserir um tipo de {string}") do |Parte|
    campo_parte = driver.find_element(id: 'Parte').send_keys('Interessada')
  end
  
  Quando("clicar em salvar") do
    button = driver.find_element(id: 'Salvar')
    button.click
  end
  
  Entao("o sistema apresenta a mensagem {string}") do |mensagem_esperada|
    expect(@mensagem_esperada).to eql mensagem_esperada
  end

  #Insucesso
  Dado("que estou na tela de inclusão de pessoa") do
    driver.navigate.to "url_sistema/tela_inclusão_Pessoa"
  end
  
  Quando("inserir uma {string}") do |Pessoa|
    campo_pessoa = driver.find_element(id: 'Pessoa').send_keys('')
  end
  
  Quando("inserir um tipo de {string}") do |Parte|
    campo_parte = driver.find_element(id: 'Parte').send_keys('')
  end
  
  Quando("clicar em salvar") do
    button = driver.find_element(id: 'Salvar')
    button.click
  end
  
  Entao("o sistema apresenta a mensagem {string}") do |mensagem_esperada|
    expect(@mensagem_esperada).to eql mensagem_esperada
  end

  #Cancelar
  Dado("que estou na tela de inclusão de pessoa") do
    driver.navigate.to "url_sistema/tela_inclusão_Pessoa"
  end
  
  Quando("inserir uma {string}") do |Pessoa|
    campo_pessoa = driver.find_element(id: 'Pessoa').send_keys('Nathalia Peruzzo')
  end
  
  Quando("inserir um tipo de {string}") do |Parte|
    campo_parte = driver.find_element(id: 'Parte').send_keys('Interessada')
  end
  
  Quando("clicar em salvar") do
    button = driver.find_element(id: 'Cancelar')
    button.click
  end
  
  Entao("o sistema apresenta a mensagem {string}") do |mensagem_esperada|
    expect(@mensagem_esperada).to eql mensagem_esperada
  end
  