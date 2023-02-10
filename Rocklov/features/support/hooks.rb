Before do 
    @alert = Alert.new #cria uma variavel e instância para componentes.
    @login_page = LoginPage.new #para instanciar dentro de todas as chamadas que estão com @ 
                                #sempre vai chamar antes de executar um metodo.

    @signup_page = Signup_page.new
    @dash_Page = DashPage.new
    @equipos_page = EquiposPage.new
end
    