class LoginPage
    include Capybara::DSL
  
  def go
    visit '/'        
  end

  def with(email, pass)
    find('#emailId').set email
    #find("input[name=email]")#CSS Selector
    find('#passId').set pass
    #find("input[name=password]")#CSS Selector
    click_button "Entrar"
  end

  def alert
    find(".alert").text
  end
end