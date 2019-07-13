Quando("eu somo {int} + {int}") do |valor1, valor2|
    @soma = valor1 + valor2
  end
  
  Então("o resultado deve ser {int}") do |resultado|
    expect(@soma).to eq resultado
    puts @soma
    puts resultado
  end
  