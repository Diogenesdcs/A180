Dado('que acesso a página de cadastro') do
visit "http://rocklov-web:3000/signup" #acesso a página
end

Quando('submeto o meu cadastro completo') do #preencho o cadastro
 
  MongoDB.new.remove_user("diogenes-email@hotmail.com") #chamo a classe e aciona o metodo da classe dentro do arquivo mongo.rb

  find("#fullName").set "Diógenes"# #para chamar o Css
  find("#email").set "diogenes-email@hotmail.com"
  find("#password").set "123"

  click_button "Cadastrar"
end

Então('sou redirecionado para o Dashboard') do #espero que na pagina contenha dashboard
    expect(page).to have_css ".dashboard"
end

Quando('submeto o meu cadastro sem o nome') do
  find("#email").set 'diogenes@gmail.com' 
  find("#password").set "123"

  click_button "Cadastrar"
end

#validação de mensagem sem argumento. sem string com a mensagem hard coded
# Então('vejo a mensagem de alerta: Oops. Informa seu nome completo!') do
#   alert = find(".alert-dark") #alert recebe a busca do Css e inspeciona o texto se é igual.
#   expect(alert.text).to eql "Oops. Informe seu nome completo!"
# end

Quando('submeto o meu cadastro sem o email') do
   find("#fullName").set "Diógenes"# #para chamar o Css
   find("#password").set "123"

   click_button "Cadastrar"
end

Quando('submeto o meu cadastro com email incorreto') do
  find("#fullName").set "Diógenes"# #para chamar o Css
  find("#email").set 'diogenes*.com'
  find("#password").set "123" 

  click_button "Cadastrar"
end


Quando('submeto o meu cadastro sem a senha') do
  find("#fullName").set "Diógenes"# #para chamar o Css do campo
  find("#email").set Faker::Internet.free_email 
 
  click_button "Cadastrar"
end

#argumentos do cucumber das mensagens 
#criei uma variavael alert fiz a busca do css da tela 
#inspecionei a alert se tem o mesmo texto da string alert_msgs.
Então('vejo a mensagem de alerta: {string}') do |mensagem_alerta|
  alert = find(".alert-dark")
  expect(alert.text).to eql mensagem_alerta
end