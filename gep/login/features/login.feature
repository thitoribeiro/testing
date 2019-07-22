#Language: en

Feature: Login
To access the system 
Being a registered user
I can access the system with a user and password

Scenario: No user and password
When I login with "Thito" and "123456"
Then login will not be done
And will show the message "O campo "Login" deve ser preenchido"
And "O campo "Senha" deve ser preenchido"

Scenario: No user
When I login with the password "123456"
Then login will not be done
And will show the message "O campo "Login" deve ser preenchido"

Scenario: No password
When I login with the user "Thito"
Then login will not be done
And will show the message "O campo "Senha" deve ser preenchido"

Scenario: Invalid user
When I login with user "Thito" and password "Sebrae@1"
Then login will not be done
And will show the message "Para acessar o sistema você deve possuir perfil de acesso cadastrado. Favor solicitar ao responsavel."

Scenario: Invalid password
When I login with user "gpnet\sas" and password "123456"
Then login will not be done
And will show the message "Login e/ou Senha incorretos"

Scenario: Access
Given I have a user and password
When I login with "gpnet\sas" e "Sebrae@1"
Then I see the system logged in
