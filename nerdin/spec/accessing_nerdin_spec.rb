describe 'Accessing the Website NerdIN' do
  
    it "Visiting the Website" do
  
      visit 'https://www.nerdin.com.br/'
      expect(page.title).to eql 'NerdIn: Vagas de TI'  
      puts page.title  
      end
  
  end  