
describe 'Dropdown List', :dropdown do

  # Selecionando com método SELECT 
  it 'item especifico simples' do
    visit 'https://training-wheels-protocol.herokuapp.com/dropdown'
    select('Loki', from: 'dropdown')
    sleep 3 # temporário
  end

  # Selecionando com método FIND
  it 'item especifico com find' do 
    visit 'https://training-wheels-protocol.herokuapp.com/dropdown'
    drop = find('.avenger-list') # Css selector utilizando o find com variável 
    drop.find('option', text: 'Scott Lang').select_option
    sleep 3 # temporário
  end
  
  # Selecionando com método ALL
  it 'Qualquer item', :sample do
    visit 'https://training-wheels-protocol.herokuapp.com/dropdown'
    drop = find('.avenger-list')
    drop.all('option').sample.select_option
    sleep 3 # temporário
  end
end