
  Então('sou redirecionado para o Dashboard') do #espero que na pagina atual contenha .dashboard
    expect(page).to have_css ".dashboard"
  end

  Então('vejo a mensagem de alerta: {string}') do |mensagem_alerta|
  alert = find(".alert-dark")
  expect(alert.text).to eql mensagem_alerta
  end


