Feature: Test 1 codeceptjs
  As a user 
  I want to search Easynvest website
  To access the company them

  Scenario: searching easynvest website
    Given that I am at google site 
    When I search the Easynvest website
    And I press enter
    And I click on Easynvest link
    Then I see the home page from website

