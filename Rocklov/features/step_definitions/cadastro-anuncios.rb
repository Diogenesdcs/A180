
Dado('que estou logado como {string} e {string}') do |email, senha|

    visit "/"
    find("input[placeholder='Seu e-email']").set email
    find("input[placeholder='Sua senha secreta']").set senha
    @email = email
    
      click_button "Entrar"
end
  
Dado('que acesso o formulario cadastro de anúncio') do
    click_button "Criar anúncio"
    
    #expect(page).to have_css "#equipoform" #espera que na pg tenha o CSS.
 
end

Dado('que eu tenho o seguinte equipamento:') do |table|
    @anuncio = table.rows_hash #cria variavel anúncio e recebe a tabela do bdd e transforma em hash.

    #metodo de remover nomequipamento do banco de dados
    MongoDB.new.remove_equipo(@anuncio[:nome], @email)
end

# - Caminho relativo para massa de testes em arquivos
# - Upload
# - Como buscar elementos ocultos
Quando('submeto o cadastro desse item') do
    #Dir.pwd para encontrar o diretório raiz do pj. Caminho da pasta imagens variavel anuncio do campo thunb.
    thunb = Dir.pwd + "/features/support/fixtures/images/" + @anuncio[:thunb]  
    # faz a busca do css da tela mesmo invisivel ^^ e seta o valor da variavel recebida.
    find("#thumbnail input[type=file]", visible: false).set  thunb 
    
    #busca o css set o valor da variavel anuncio recebida na hash do nome.
    find("input[placeholder$=equipamento]").set @anuncio[:nome] 
    #busca css categoria seleciona a opçao e seta o text na hash anuncio da categoria e seleciona a opção cordas.
    find("#category").find('option', text: @anuncio[:categoria]).select_option
    find("input[placeholder^=Valor]").set @anuncio[:preco]
    
    click_button "Cadastrar"
    
end
 
#Validando valores na página com have_content do Capybara
Então('devo ver esse item no menu Dashboard') do
    #cria variavel anuncios busca Css que contenha o mesmo nome da variavel anuncio.
    anuncios = find(".equipo-list")
    expect(anuncios).to have_content @anuncio[:nome]
    #expect(anuncios).to have_content "R$200/dia"
  end