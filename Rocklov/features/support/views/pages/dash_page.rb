
class DashPage
    include Capybara::DSL

    #retorna verdadeiro ou falso porcausa do ponto de interrogação.
    def on_dash?
        return page.has_css?(".dashboard")
    end

    def goto_equipo_form
        click_button "Criar anúncio"
    end

    def equipo_list
        #busca Css que contenha o mesmo nome da variavel anuncio.
        return find(".equipo-list")
    end
end