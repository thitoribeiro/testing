#language: pt

Funcionalidade: Login
    Para que eu posssa utilizar o sistema SAS
    Sendo um usuário previamente cadastrado
    Posso acessar o sistema com o meu usuário e senha

    @login_happy
    Cenario: Acesso
        Quando eu faço login com "thito.adm" e "#Thito123"
        Então devo ser autenticado
        E acessar a tela principal do sistema

    Cenario: Senha inválida
        Quando eu faço login com "thito.adm" e "abc123"
        Então não devo ser autenticado
        E devo ver a mensagem de alerta "Usuário e/ou senha inválidos."

    Cenario: Usuário não existe
        Quando faço login com "usuário" e "abc123"
        Então não devo ser autenticado
        E devo ser a mensagem de alerta "Usuário e/ou senha não cadastrado."

    Cenario: Email não informado
        Quando eu faço o login com "" e "abc123"
        Então não devo ser autenticado
        E devo ver a mensagem de alerta "Oops. Cadê o e-mail?"