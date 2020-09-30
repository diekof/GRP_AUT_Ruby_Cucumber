class LoginPage
    include Capybara::DSL

    def faz_login(usuario, senha)
        find('#vUSERNAME').set  usuario
        find('#vUSERPASSWORD').set senha
        find('#BTNENTER').click
    end
end