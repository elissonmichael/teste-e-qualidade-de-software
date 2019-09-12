class Produto
    attr_accessor :quantidade, :valor, :nome
    def initialize(nome,valor)
      @nome = nome
      @valor = valor
      @quantidade = 1
    end
end

class Carrinho
    attr_accessor :produtos

    def initialize
        @produtos = []
        @total = 0
        @relatorio = []
    end

    def incluir(produto)
        if @produtos.include?(produto)
            produto.quantidade += 1
        else
            @relatorio << "#{produto.nome} adicionado em #{Time.now.strftime('%d/%m/%y %I:%M%p')}"
            @produtos << produto
        end
    end

    def quantidade(produto)
        produto.quantidade
    end
    
    def remover(produto)
        @produtos.delete(produto)
    end

    def total
        @produtos.each do |produto|
            @total = @total + (produto.valor * produto.quantidade)
        end
        @total
    end

    def alterar_quantidade(produto ,quantidade)
        quantidade = 0 if quantidade < 0
        produto.quantidade = quantidade 
    end

    def relatorio
        @relatorio.join(", ")
    end
end