#language:pt
@anuncio
Funcionalidade: Cadastro de Anúncios
    Sendo usuário cadastrado no Rocklov que possui equipamentos musicais
    Quero cadadastrar meus equipamentos
    Para que eu possa disponibilizalos para locação

    Contexto:
        * Login com "snow@hotmail.com" e "123"

    Cenário: Novo equipo

        Dado que acesso o formulario cadastro de anúncio
            #tabela com chave e valor.
            E que eu tenho o seguinte equipamento:
            | thunb     | fender-sb.jpg |
            | nome      | Fender Strato |
            | categoria | Cordas        |
            | preco     | 200           |
        Quando submeto o cadastro desse item
        Então devo ver esse item no menu Dashboard


    Esquema do Cenario: Tentativa de cadastro de anúncios

        Dado que acesso o formulario cadastro de anúncio
            #tabela com chave e valor.
            E que eu tenho o seguinte equipamento:
            | thunb     | <foto>      |
            | nome      | <nome>      |
            | categoria | <categoria> |
            | preco     | <preco>     |
        Quando submeto o cadastro desse item
        Então deve conter a mensagem de alerta: "<saída>"

        Exemplos:
            | foto          | nome              | categoria | preco | saída                               |
            |               | violao de nylon   | Cordas    | 150   | Adicione uma foto no seu anúncio!   |
            | clarinete.jpg |                   | Outros    | 250   | Informe a descrição do anúncio!     |
            | mic.jpg       | Microfone Shure   |           | 100   | Informe a categoria                 |
            | trompete.jpg  | Trompete clássico | Outros    |       | Informe o valor da diária           |
            | conga.jpg     | Gonga             | Outros    | abc   | O valor da diária deve ser númerico |
            | conga.jpg     | Gonga             | Outros    | 100a  | O valor da diária deve ser númerico |