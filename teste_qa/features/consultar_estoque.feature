#language:pt
Funcionalidade: Consultar Estoque
    Para que eu possa encontrar um veículo
    Sendo um usuário de uma determinada loja
    Quero encontrar o veículo em estoque
    @buscar_estoque
    Cenario: Buscar em estoque de loja/concessionária

        Dado acesso ao estoque de determinada loja
        Quando entrar na tela de ofertas da loja
        E pesquisar pela marca "honda" na loja
        E seleciono filtro concessionária e loja
        Entao devo visualizar veiculo da marca "honda".