#language: pt

@bread_bakery @temp
Funcionalidade: Remover do carrinho
    Para que eu possa manter meu carrinho apenas com itens desejados
    Sendo um cliente que desistiu de um ou mais produtos
    Posso remover itens do meu carrinho

    Contexto: Itens no carrinho
        Dado que eu tenho os seguintes itens no carrinho:
            | Nome                  | preco    | quantidade |
            | CUP CAKE              | R$ 8,70  | 1          |
            | DONUT                 | R$ 2,50  | 1          | 
            | PÃO ARTESANAL ITALIANO| R$ 15,90 | 1          |
  
        Esquema do Cenario: Remover item
        
        Quando eu removo somente o <item>
        Entao o valor total deve ser de <total>

        Exemplos: 
        | item | total      |
        | 0    | "R$ 18,40" |
        | 1    | "R$ 24,60" |
        | 2    | "R$ 11,20" |

    Cenario: Remover todos os itens

        Quando eu removo todos os itens
        Entao vejo a seguinte mensagem no carrinho 'Seu carrinho está vazio'

    # Cenario: Remover 1 item

    #     Dado que eu tenho os seguintes itens no carrinho:
    #         | Nome                  | preco    | quantidade |
    #         | Cup Cake              | R$ 8,70  | 1          |
    #         | Donut                 | R$ 2,50  | 1          | 
    #         | Pão Artesanal Italiano| R$ 15,90 | 1          |
    #     Quando eu removo somente o item 0
    #     Entao o valor total deve ser de 'R$ 18,40'

    @temp
    Cenario: Limpar carrinho

        Quando eu limpo o meu carrinho
        Entao vejo a seguinte mensagem no carrinho 'Seu carrinho está vazio'
