Dado("que eu tenho {int} laranjas na bolsa.") do |valor|
  @laranja = valor    
end
  
Quando("eu coloco {int} laranjas na bolsa.") do |valor2|
  @coloquei = valor2
  @resultado = @laranja + @coloquei    
end
  
Então("eu verifico se o total de laranjas é {int}.") do |total|
  expect(@resultado).to eq total      
end
  
Quando("eu tiro {int} laranjas da bolsa.") do |valor3|
  @retirei = valor3
  @resultado = @laranja - @retirei    
end
  
Então("eu verifico com quantas laranjas eu fiquei na bolsa.") do
 expect(@resultado).to eq 8

end
  