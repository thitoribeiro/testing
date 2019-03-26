describe 'IDs dinâmicos', :login_dinamico do
  
  before(:each) do

    visit 'https://training-wheels-protocol.herokuapp.com/access'
  
  end

    it 'cadastro' do
    find('#PortalTheme_wt10_block_wtcontent_holder_wt8_wtUsernameInput').set 'Thito'
    find('#PasswordInput_wt11_PortalTheme_wt7_block_wtcontent_holder_wt8_wt').set '123456'
    
    
    end



end