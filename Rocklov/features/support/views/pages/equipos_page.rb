
#validação do formulario de cadastro
#checkpoint com time out explicitio

class EquiposPage
    include Capybara::DSL
    
    def create(equipo)
        page.has_css? "#equipoform"
        #Dir.pwd para encontrar o diretório raiz do pj. Caminho da pasta imagens variavel anuncio do campo thunb.
        #thunb = Dir.pwd + "/features/support/fixtures/images/" + equipo[:thunb]  
        # faz a busca do css da tela mesmo invisivel ^^ e seta o valor da variavel recebida.
        #find("#thumbnail input[type=file]", visible: false).set  thunb 
        
        #chamada de metodo com foto encapsulado no metodo sem foto se receber maior que 0 executa o metodo upload.
        upload(equipo[:thunb]) if equipo[:thunb].length > 0
        #busca o css set o valor da variavel anuncio recebida na hash do nome.
        find("input[placeholder$=equipamento]").set equipo[:nome] 
        #chamada de metodo select_cat encapsulado no metodo select_cat se receber valor maior que 0 executa o metodo select_cat.
        select_cat(equipo[:categoria]) if equipo[:categoria].length > 0
        find("input[placeholder^=Valor]").set equipo[:preco]
        
        click_button "Cadastrar"
    end
   
    def select_cat(cat)
         #busca css categoria seleciona a opçao e seta o text na hash anuncio da categoria e seleciona a opção cordas.
         find("#category").find('option', text: cat).select_option
    end

    def upload(file_name)
        #Dir.pwd para encontrar o diretório raiz do pj. Caminho da pasta imagens variavel anuncio do campo thunb sem foto.
        thunb = Dir.pwd + "/features/support/fixtures/images/" + file_name #recebe o argumento do metodo upload.  
        # faz a busca do css da tela mesmo invisivel ^^ e seta o valor da variavel recebida.
         find("#thumbnail input[type=file]", visible: false).set  thunb   
    end
end