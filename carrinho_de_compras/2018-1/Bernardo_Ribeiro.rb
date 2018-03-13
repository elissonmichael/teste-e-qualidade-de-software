

class Carrinho

    def initialize 
        @item = Array.new
    end

    def incluir (produto)
       @item << produto
    end

    def remover(produto)
        @item.delete(produto)
    end

    def quantidade (produto)
        @item.count(produto)
    end

    def alterar_quantidade(produto, quantidade)
        quantidade - @item.count(produto).times do
            incluir(produto)
        end
    end

    def total
        valor_total = 0
        @item.each{|produto| valor_total = valor_total + produto.preco}
        valor_total
    end

    def produtos
        @item
    end
end

class Produto
    attr_reader :titulo, :preco

    def initialize (nome, preco)
        @nome = nome
        @preco = preco
    end

    def nome
        @nome
    end

    def preco
        @preco
    end

end