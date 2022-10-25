#language:pt
@anuncio
Funcionalidade: Cadastro de Anúncios
    Sendo usuário cadastrado no Rocklov que possui equipamentos musicais
    Quero cadadastrar meus equipamentos
    Para que eu possa disponibilizalos para locação

    Cenário: Novo equipo

        Dado que estou logado como "snow@hotmail.com" e "123"
            E que acesso o formulario cadastro de anúncio
            #tabela com chave e valor.
            E que eu tenho o seguinte equipamento:
            | thunb     | fender-sb.jpg |
            | nome      | Fender Strato |
            | categoria | Cordas        |
            | preco     | 200           |
        Quando submeto o cadastro desse item
        Então devo ver esse item no menu Dashboard