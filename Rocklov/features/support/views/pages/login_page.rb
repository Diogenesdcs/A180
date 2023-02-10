
#pageobjects
class LoginPage #classes
    include Capybara::DSL #para incluir o visit
    #metodos
    def open
    visit "/" #endereço no env.rb
    end
    #appactions
     def with(email,senha)
     find("input[placeholder='Seu email']").set email
     find("input[placeholder='Sua senha secreta']").set senha
     click_button "Entrar"
     end

    # def campo_email
    #   return find("input[placeholder='Seu email']")
    # end
    # def campo_senha
    #   return find("input[placeholder='Sua senha secreta']")
    # end
    # def botao_entrar
    #   return click_button "Entrar"
    # end
end 