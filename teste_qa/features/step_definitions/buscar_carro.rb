Dado("que o usuário acessa a pagina da webmotor") do
    visit "https://www.webmotors.com.br/"
    sleep 60
  end
  
  Quando("entrar na tela de ofertas") do
    find(:xpath, "//*[contains(text(),'Ver Ofertas')]").click 
  end
  
  E("pesquisar pela marca {string}") do |marca|
    @marca = marca.downcase
    sleep 7
    find(:xpath, "//*[@title='" + @marca + "']").click 
  end
  
  Entao("devo ver os resultados da marca {string}") do |marca|
    sleep 6
    assert_text('Honda Novos e Usados')
  end
  
   E("selecionar o modelo {string}") do |modelo|
    @modelo = modelo.upcase
    find(:xpath, "//*[contains(text(),'Todos os modelos')]").click 
    sleep 5
    find(:xpath, "//*[contains(text(),'" + @modelo + "')]").click 
   end
  
   Entao("devo ver os resultados do modelo {string}") do |string|
    sleep 6
    assert_text('Honda Accord Novos e Usados')
   end
  
   Quando("seleciono a versao {string}") do |versao|
    @versao = versao.upcase
    find(:xpath, "//*[contains(text(),'Todas as versões')]").click 
    sleep 5
    find(:xpath, "(//*[contains(text(),'" + @versao + "')])[1]").click 
   end
  
   Entao("devo ver os resultados da versao {string}") do |string|
    sleep 6
    assert_text('Honda Accord 2.0 Ex 16v Gasolina 4p Automático Novos e Usados')
   end