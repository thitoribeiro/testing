

describe "First class Capybara script", :hello do
    it "Visit page" do
      visit "https://training-wheels-protocol.herokuapp.com"
      expect(page.title).to eql "Training Wheels Protocol"
    end
  end