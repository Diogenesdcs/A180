

class Signup_page
    include Capybara::DSL
    def open
       visit "/signup"
    end

    def create(user)            
    find("#fullName").set user[:nome] # # faz a busca e chama o Css do campo nome, depois insere a variavel
    find("#email").set user[:email] # a variavel user nos campos nome email e senha da tabela do bdd.
    find("#password").set user[:senha]
    click_button "Cadastrar"
    end
end