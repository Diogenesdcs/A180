Dado('que acesso a pagina principal') do
  #visit "/" #endereço no env.rb
  @login_page = LoginPage.new #para subir a page e executar os metodos
  @login_page.open
end
  
Quando('submeto minhas credenciais {string} e {string}') do |email, senha|
  #find("input[placeholder='Seu email']").set email
  #find("input[placeholder='Sua senha secreta']").set senha
  #click_button "Entrar"

  #classes page objects e metodos no login_page.rb
  @login_page.with(email, senha)
  #Ao utilizar o @ nos page objects não precisa colocaem todos os códigos
  end