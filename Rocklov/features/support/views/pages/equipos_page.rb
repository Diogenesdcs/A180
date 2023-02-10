
#validação do formulario de cadastro
#checkpoint com time out explcitio

class EquiposPage
    include Capybara::DSL
    
    def create(equipo)
        page.has_css? "#equipoform"

            #Dir.pwd para encontrar o diretório raiz do pj. Caminho da pasta imagens variavel anuncio do campo thunb.
        thunb = Dir.pwd + "/features/support/fixtures/images/" + equipo[:thunb]  
        # faz a busca do css da tela mesmo invisivel ^^ e seta o valor da variavel recebida.
        find("#thumbnail input[type=file]", visible: false).set  thunb 
        
        #busca o css set o valor da variavel anuncio recebida na hash do nome.
        find("input[placeholder$=equipamento]").set equipo[:nome] 
        #busca css categoria seleciona a opçao e seta o text na hash anuncio da categoria e seleciona a opção cordas.
        find("#category").find('option', text: equipo[:categoria]).select_option
        find("input[placeholder^=Valor]").set equipo[:preco]
        
        click_button "Cadastrar" 

    end
end