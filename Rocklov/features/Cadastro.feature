#language : pt

Funcionalidade: Cadastro
    Sendo um músico que possui equipamentos musicais
    Quero fazer o meu cadastro no Rocklov
    Para que eu possa disponbizá-los para locação.

    @cadastro  
    Cenario: Fazer cadastro
        Dado que acesso a página de cadastro
        Quando submeto o meu cadastro completo
        Então sou resdirecionado para o Dashboard
        
    @sem_nome
    Cenario: Submeter o cadastro sem o nome
        Dado que acesso a página de cadastro
        Quando submeto o meu cadastro sem o nome
        Então vejo a mensagem de alerta: Oops. Informa seu nome completo!

    Cenario: Submeter  cadastro sem o email
        Dado que acesso a página de cadastro
        Quando submeto o meu cadastro sem o email
        Então vejo a mensagem de alerta: Oops. Informa seu nome completo!

    Cenario: Submeter  cadastro com email incorreto
        Dado que acesso a página de cadastro
        Quando submeto o meu cadastro incorreto
        Então vejo a mensagem de alerta: Oops. Informa seu nome completo!

    Cenario: Submeter  cadastro sem a senha
        Dado que acesso a página de cadastro
        Quando submeto o meu cadastro sem a senha
        Então vejo a mensagem de alerta: Oops. Informa seu nome completo!