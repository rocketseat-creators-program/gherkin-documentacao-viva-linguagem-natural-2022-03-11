#Language: pt-br

Feature: Carrinho online
    Eu como cliente da loja online XPTO
    Quero incluir itens, verificar frete e excluir itens
    Para realizar minha compra online

Contexto: 
    Dado que o usuario está logado na loja online XPTO

Cenário: Adicionar produto ao carrinho
    Quando selecionar um item
    E clicar em "Adicionar no Carrinho"
    Entao o item será adicionado com sucesso

Cenário: Verificar valor do frete
    Quando adicionar um item ao Carrinho
    E informar o CEP
    E clicar em Calcular
    Entao será apresentado o valor do frete

Cenário: Excluir item do Carrinho
    Quando adicionar um item ao carrinho 
    E verificar que o item foi adicionado
    E clicar em Deletar item
    Entao será apresentada a mensagem "Item  excluido com sucesso."