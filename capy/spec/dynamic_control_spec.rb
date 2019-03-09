describe 'Dynamic Control', :dc do

    before(:each) do
        visit 'https://training-wheels-protocol.herokuapp.com/dynamic_controls'
    end

    it 'quando habilito o campo' do

        # quando tem a propriedade disabled true o campo está desabilitado
        # quando não tem aa propriedade disable o campo está habilitado

        res = page.has_field? 'movie', disabled: true
        puts res

        click_button 'Habilita'
        sleep 15

        res = page.has_field? 'movie', disabled: false
        puts res

    end

end