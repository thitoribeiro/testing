When("I access the url") do
  visit ('/login/')  
  sleep(5)
end
  
  Then("I see the webpage opened") do
    expect(page).to have_current_path('https://www.nerdin.com.br/login/', url: true)
    sleep(5)
    
  end
  