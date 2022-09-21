#language : pt

Funcionalidade: Cadastro
    Sendo um músico que possui equipamentos musicais
    Quero fazer o meu cadastro no Rocklov
    Para que eu possa disponbizá-los para locação.

    @cadastro  
    Cenario: Fazer cadastro
        Dado que acesso a página de cadastro
        Quando submeto o meu cadastro completo
        Então sou redirecionado para o Dashboard
        
    @tentativa_cadastro
    Cenario: Submeter o cadastro sem o nome
        Dado que acesso a página de cadastro
        Quando submeto o meu cadastro sem o nome
        Então vejo a mensagem de alerta: "Oops. Informe seu nome completo!"
    
    @tentativa_cadastro
    Cenario: Submeter  cadastro sem o email
        Dado que acesso a página de cadastro
        Quando submeto o meu cadastro sem o email
        Então vejo a mensagem de alerta: "Oops. Informe um email válido!"
    
    @tentativa_cadastro
    Cenario: Submeter  cadastro com email incorreto
        Dado que acesso a página de cadastro
        Quando submeto o meu cadastro com email incorreto
        Então vejo a mensagem de alerta: "Oops. Informe um email válido!"
   
    @tentativa_cadastro
    Cenario: Submeter  cadastro sem a senha
        Dado que acesso a página de cadastro
        Quando submeto o meu cadastro sem a senha
        Então vejo a mensagem de alerta: "Oops. Informe sua senha secreta!"
        