Dado('que acesso a página de cadastro') do
    @signup_page.open 
    # visit "signup" #acesso a página config do app host no arquivo env.rb
  end
  
  Quando('submeto o formulário de cadastro:') do |table|
    # table is a Cucumber::MultilineArgument::DataTable
    user = table.hashes.first #variavel user recebe table do bdd e transforma em array.
    
    MongoDB.new.remove_user(user[:email]) #chamo a classe e aciona o metodo da classe dentro do arquivo mongo.rb
    @signup_page.create(user)
    # find("#fullName").set user[:nome] # # faz a busca e chama o Css do campo nome, depois insere a variavel
    # find("#email").set user[:email] # a variavel user nos campos nome email e senha da tabela do bdd.
    # find("#password").set user[:senha]  
    #click_button "Cadastrar"
  end

  # Então('sou redirecionado para o Dashboard') do #espero que na pagina atual contenha .dashboard
  #     expect(page).to have_css ".dashboard"
  # end

  # Então('vejo a mensagem de alerta: {string}') do |mensagem_alerta|
  #   alert = find(".alert-dark")
  #   expect(alert.text).to eql mensagem_alerta
  # end


  # formato de cadastro sem datatable
  # Quando('submeto o meu cadastro completo') do #preencho o cadastro
  #   MongoDB.new.remove_user("diogenes-email@hotmail.com") #chamo a classe e aciona o metodo da classe dentro do arquivo mongo.rb
  #   find("#fullName").set "Diógenes"# #para chamar o Css
  #   find("#email").set "diogenes-email@hotmail.com"
  #   find("#password").set "123"
  #   click_button "Cadastrar"
  # end
 
  #validação de mensagem sem argumento. sem string com a mensagem hard coded
  # Então('vejo a mensagem de alerta: Oops. Informa seu nome completo!') do
  #   alert = find(".alert-dark") #alert recebe a busca do Css e inspeciona o texto se é igual.
  #   expect(alert.text).to eql "Oops. Informe seu nome completo!"
  # end
    
  #argumentos do cucumber das mensagens de alerta
  #criei uma variavael alert fiz a busca do css da tela 
  #inspecionei a alert se tem o mesmo texto da string alert_msgs.
