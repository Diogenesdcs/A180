
Dado('que estou logado como {string} e {string}') do |email, senha|
    @email = email    
    @login_page = LoginPage.new 
    @login_page.open
    @login_page.with(email, senha)
end
  
Dado('que acesso o formulario cadastro de anúncio') do
    @dashPage.goto_equipo_form
 
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
#page equipos_page metodo create que recebe @anuncio.
    @equipos_page.create(@anuncio)
end
 
#Validando valores na página com have_content do Capybara
Então('devo ver esse item no menu Dashboard') do
    #page dash_page metodo equipolist que contenham no  @anuncio.
    expect(@dash_Page.equipo_list).to have_content @anuncio[:nome]
    #expect(anuncios).to have_content "R$200/dia"
end