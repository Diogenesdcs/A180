Dado('que acesso a pagina principal') do
  visit "http://rocklov-web:3000"
end
  

Quando('submeto minhas credenciais {string} e {string}') do |email, senha|
  find("input[placeholder='Seu e-email']").set email
  find("input[placeholder='Sua senha secreta']").set senha

    click_button "Entrar"
end