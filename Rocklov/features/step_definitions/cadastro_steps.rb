Dado('que acesso a página de cadastro') do
visit "http://rocklov-web:3000/signup" #acesso a página
end

Quando('submeto o meu cadastro completo') do #preencho o cadastro
  find("#fullName").set "Diógenes"# #para chamar o Css
  find("#email").set Faker::Internet.free_email 
  find("#password").set "123"

  click_button "Cadastrar"
end

Então('sou redirecionado para o Dashboard') do #E espero que na pagina contenha dashboard
    expect(page).to have_css ".dashboard"
    sleep 5
end

Quando('submeto o meu cadastro completo') do #preencho o cadastro
  find("#email").set Faker::Internet.free_email #boblioteca faker
  find("#password").set "123"

  click_button "Cadastrar"
end
Então('vejo a mensagem de alerta: Oops. Informa seu nome completo!') do
  alert = find(".alert-dark") #alert recebe a busca do Css e inspeciona o texto se é igual.
  expect(alert.text).to eql "Oops. Informe seu nome completo!"
end
