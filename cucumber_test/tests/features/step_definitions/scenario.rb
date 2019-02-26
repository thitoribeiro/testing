Dado("que eu tenho {int} laranjas") do |valor1|
  puts valor1
    @laranja = valor1
end
  
Quando("eu como {int} laranjas") do |valor2|
  puts valor2
  @comer = valor2
  @resultado = @laranja - @comer
end
  
Então("eu vejo quantas laranjas sobraram.") do
  puts @resultado
   expect(@resultado).to eq 8
end

Quando("eu compro mais {int} laranjas") do |valor3|
  puts valor3
  @comprar = valor3
  @resultado2 = @laranja + @comprar
end

Então("eu vejo quantas laranjas eu tenho.") do
    puts @resultado2
     expect(@resultado2).to eq 15
  end
  
    
  