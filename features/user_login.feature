Feature: User Login
  As an user
  I want to login
  So that I can see my personal info
  
 Scenario: Successful login
  Given I am on the login page
  And I fill in "Email" with "heitor_211@hotmail.com"
  And I fill in "Password" with "senha1"
  And I press "Entrar"
  Then I should see "Bem-vindo Heitor!"

Scenario: Invalid login
  Given I am on the login page
  And I fill in "Email" with "heitor_211@hotmail.com"
  And I fill in "Password" with "senhaasdf"
  And I press "Entrar"
  Then I should see the Login page again
