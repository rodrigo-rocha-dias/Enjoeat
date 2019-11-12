#language: pt

Funcionalidade: Cardapio
    Para que eu possa decidir o que pretendo comer
    Sendo um usuário que escolheu um restaurante
    Posso acessar o cardapio 

    Contexto: Restaurantes
        Dado que acesso a lista de restaurantes

    @cardapio 
    Cenario: Produto disponivel

        Quando eu escolho o restaurante 'Burger House'
        Então vejo os seguintes itens disponiveis no cardápio:
            | produto           | descricao                       | preco    |
            | Classic Burger    | O clássico. Não tem como errar. | R$ 18,50 |
            | Batatas Fritas    | Batatas fritas crocantes        | R$ 5,50  |
            | Refrigerante      | O refri mais gelado da cidade.  | R$ 4,50  |

    Cenario: Carrinho vazio

        Quando eu escolho o restaurante "Burger House"
        Então vejo a seguinte mensagem no carrinho "Seu carrinho está vazio!"


## Exemplo comum
        # Quando eu acesso um restaurante
        # Então vejo os produtos disponiveis
        # E vejo a descrição dos produtos
        # E vejo o preço dos produtos

    # BDD (Comportamento)
    # Cenarios com Exemplos

    # Tradicional
    # Casos de Uso (Doc/Espec) => Desenvolvedor cria o APP
    # Plano de teste (Casos de teste) => Testador Testa o APP (com base no caso de teste)
    # Massa de teste => Inputs de dados no APP