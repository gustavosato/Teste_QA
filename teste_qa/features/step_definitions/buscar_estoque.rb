Dado("acesso ao estoque de determinada loja") do
    visit "https://www.webmotors.com.br/"
    sleep 60
  end

  Quando("entrar na tela de ofertas da loja") do
    find(:xpath, "//*[contains(text(),'Ver Ofertas')]").click 
  end

  E("pesquisar pela marca {string} na loja") do |marca|
    @marca = marca.downcase
    sleep 7
    find(:xpath, "//*[@title='" + @marca + "']").click 
  end
  
  E("seleciono filtro concessionária e loja") do
    find(:xpath, "(//*[@id='Concessionária'])[1]//..").click
    sleep 3
    find(:xpath, "(//*[@id='Loja'])[1]//..").click
  end
  
  Entao("devo visualizar veiculo da marca {string}.") do |string|
    sleep 4
    assert_text('CONCESSIONÁRIALOJA')
  end