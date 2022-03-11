#Language: pt-br

Feature: Realizar login no sistema XPTO
    Eu como usuario do sistema XPTO
    Quero realizar login
    Para ter acesso ao sistema

Cenario: Login com sucesso

Given que o usuario esta na pagina de login
When informa um usuario valido
And informa uma senha valida
And clica em "Realizar login"
Then sera redirecionado para home do sistema

Cenario: Login com senha invalida

Dado que o usuario esta na pagina de login
Quando informa um usuario 
E informa uma senha invalida
E clica em "Realizar login"
Então será apresentada mensagem "Senha incorreta! Tente novamente."


#Exemplo usando a palavra chave but (mas)

Dado que o usuario esta na pagina de login
Quando informa um usuario 
E informa uma senha invalida
E clica em "Realizar login"
Então será apresentada mensagem "Senha incorreta! Tente novamente."
Mas a mensagem desaparece da tela em 3 segundos



#Exemplo com Esquema de cenario

Scenario Outline: Cadastro de usuario
    Dado que o usuario esta na pagina de cadastro de usuario
    E informa um e-mail valido "Email"
    E informa o nome completo "nome"
    E informa uma senha de 4 números "senha"
    E informa novamente a mesma senha de 4 números "confirmar senha"
    E clica em Cadastrar
    Então o usuario Verá a mensagem "mensagem"

Examples:
    | Email            | | nome         | | senha | | confirmar senha | | mensagem                                 |
    | ana@email.com    | | Ana Souza    | | 143   | | 143             | | Sua senha precisa conter 4 números       |
    | camila@email.com | | Camila Teles | | 12T9  | | 12T9            | | Formato da senha não atende os critérios | 
    | pedro@email.     | | Pedro Melo   | | 1287  | | 1287            | | Usuário cadastrado com sucesso           |