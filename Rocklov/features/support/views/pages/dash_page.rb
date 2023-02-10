
class DashPage
    include Capybara::DSL

    #retorna verdadeiro ou falso 
    def on_dash?
        page.hash_css?(".dashboard")
    end

    def goto_equipo_form
        click_button "Criar anúncio"
    end

    def equipo_list
        #busca Css que contenha o mesmo nome da variavel anuncio.
        return find(".equipo-list")
    end
end