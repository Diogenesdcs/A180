#language: pt
@login
Funcionalidade: Login
    Sendo um usúario cadastrado
    Quero acessar o sistema da Rocklov
    Para que eu possa anunciar meus equipamentos musicais

    @login
    Cenario: Login do usúario

        Dado que acesso a pagina principal
        Quando submeto minhas credenciais "diogenes@yahoo.com" e "123"
        #se for acima de 3 massas de dados criar um datatable
        Então sou redirecionado para o Dashboard

    Esquema do Cenário: tentativas

        Dado que acesso a pagina principal
        Quando submeto minhas credenciais "<input_email>" e "<input_senha>"
        Então vejo a mensagem de alerta: "<mensagem_output>"

        Exemplos:
            | input_email        | input_senha | mensagem_output                  |
            | diogenes@yahoo.com | 1234        | Usuário e/ou senha inválidos.    |
            | diogenes@404.com   | 1234        | Usuário e/ou senha inválidos.    |
            | diogenes%yahoo.com | 123         | Oops. Informe um email válido!   |
            |                    | 123         | Oops. Informe um email válido!   |
            | diogenes@yahoo.com |             | Oops. Informe sua senha secreta! |


