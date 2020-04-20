#language:pt

Funcionalidade: Buscar Veículo
    Para que seja possível encontrar um veiculo
    Sendo um usuário
    Quero realizar a busca com filtros

    @buscar_marca
    Cenario: Realizar busca por marca

        Dado que o usuário acessa a pagina da webmotor
        Quando entrar na tela de ofertas
        E pesquisar pela marca "honda"
        Entao devo ver os resultados da marca "honda"
    @buscar_modelo
    Cenario: Realizar busca por modelo

        Dado que o usuário acessa a pagina da webmotor
        Quando entrar na tela de ofertas
        E pesquisar pela marca "honda"
        E selecionar o modelo "Accord"
        Entao devo ver os resultados do modelo "Accord"
    @buscar_versao
    Cenario: Realizar busca por versao

        Dado que o usuário acessa a pagina da webmotor
        Quando entrar na tela de ofertas
        E pesquisar pela marca "honda"
        E selecionar o modelo "Accord"
        E seleciono a versao "2.0 EX 16V GASOLINA 4P AUTOMÁTICO"
        Entao devo ver os resultados da versao "2.0 EX 16V GASOLINA 4P AUTOMÁTICO"      

                