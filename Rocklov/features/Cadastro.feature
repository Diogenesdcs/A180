#language : pt

Funcionalidade: Cadastro
    Sendo um músico que possui equipamentos musicais
    Quero fazer o meu cadastro no Rocklov
    Para que eu possa disponbizá-los para locação.

    @cadastro
    Cenario: Fazer cadastro
        Dado que acesso a página de cadastro
        Quando submeto o formulário de cadastro:
            #data table cucumber
            | nome     | email                      | senha |
            | Diógenes | diogenes-email@hotmail.com | 123   |
        Então sou redirecionado para o Dashboard

    Esquema do Cenário: Tentativa de Cadastro

        Dado que acesso a página de cadastro
        Quando submeto o formulário de cadastro:
                            #placeholders
            |nome         |email         |senha         |
            |<nome_input> |<email_input> |<senha_input> |
        Então vejo a mensagem de alerta: "<mensagem_output>"
                            #matriz
        Exemplos:  
        | nome_input | email_input                |senha_input | mensagem_output                 |
        |            | diogenes-email@hotmail.com | 123        |Oops. Informe seu nome completo! |
        | Diógenes   |                            | 123        |Oops. Informe um email válido!   |
        | Diógenes   | diogenes-email*hotmail.com | 123        |Oops. Informe um email válido!   |
        | Diógenes   | diogenes-email@hotmail.com |            |Oops. Informe sua senha secreta! |
