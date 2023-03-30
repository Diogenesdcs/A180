#antes dos cenáriosde bdd
Before do 
    @alert = Alert.new #cria uma variavel e instância para componentes.
    @login_page = LoginPage.new #para instanciar dentro de todas as chamadas que estão com @ 
                                #sempre vai chamar antes de executar um metodo.
    @signup_page = Signup_page.new
    @dash_page = DashPage.new
    @equipos_page = EquiposPage.new

    #resolução monitor
    #page.driver.browser.manage.window.maximize
    page.current_window.resize_to(1440,900)
end
    
#executa depois dos cenários bdd.
After do
  temp_shot = page.save_screenshot("logs/temp_screenshot.png") #cria variavel tira um print da pagina e salva em logs
  
  Allure.add_attachment(
    name: "Screenshot",
    type:   Allure::ContentType::PNG,
    source: File.open(temp_shot),
  )
end