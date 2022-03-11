# Language: pt

Feature: Pesquisar produto na loja online
    Eu como cliente
    Quero realizar a pesquisa de produtos na loja online
    Para encontrar um produto com mais facilidade

Cenário: Pesquisar produto por nome

    Dado que o usuario esta no campo de pesquisa
    Quando buscar pelo produto "Lava e Seca"
    Então verifico no resultado apenas produtos do tipo "Lava e Seca"

Cenário: Pesquisar produto indisponível

    Dado que o usuário está no campo de pesquisa
    Quando buscar pelo produto "Cafeteira XPTO"
    Então verifico no resultado a mensagem "Indisponivel"

Cenário: Pesquisar produto inexistente

    Dado que o usuario está no campo de pesquisa
    Quando buscar pelo produto "Capacete"
    Então verifico no resultado a mensagem "Não foi possível encontrar o produto pesquisado"

