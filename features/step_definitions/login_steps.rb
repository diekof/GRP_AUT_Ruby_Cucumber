Dado("que eu acesso a página principal") do
    visit 'https://grp-hm.pbh.gov.br/bh_hml_quartzo/servlet/app.wlogin'
end

Quando("eu faço login com {string} e {string}") do |usuario, senha|
    @usuario = usuario
    sleep 2
    login = LoginPage.new
    login.faz_login(usuario, senha)
end

Então("devo ser autenticado com sucesso") do
    sleep 2
    expect(page).to have_content @usuario
end

Então("devo ver a seguinte mensagem {string}") do |mensagem|
    sleep 5
    expect(page).to have_content mensagem
end