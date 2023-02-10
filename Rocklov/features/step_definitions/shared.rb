
  Então('sou redirecionado para o Dashboard') do #espero que na pagina atual contenha .dashboard
    #inspeciona a page dash_page e verifica se tem verdadeiro ou falso o campo .dashboard.
    expect(@dash_Page.on_dash).to be true
  end

  Então('vejo a mensagem de alerta: {string}') do |mensagem_alerta|
    #pega a instancia alert do arquivo shared que busca do método do arquivo alert
     expect(@alert.dark).to eql mensagem_alerta #espero que na pagina atual contenha o texto de alerta.
     
  end


