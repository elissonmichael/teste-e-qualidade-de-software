class Carrinho

    def initialize
        @produtos = Array.new
        @quantidade = Array.new
        @data_inicial = Array.new
    end

    def incluir produto
        if @produtos.include?(produto)
            adiciona_mais_um_do_produto(produto)
        else
            @produtos << produto
            @quantidade << 1
            @data_inicial << Time.now.strftime('%d/%m/%y %I:%M%p')
        end 
    end

    def remover produto
        @quantidade.delete_at(get_indice_do_produto(produto))
        @produtos.delete(produto)
    end

    def alterar_quantidade(produto, quantidade)
        @quantidade.insert(get_indice_do_produto(produto), quantidade)
    end

    def total
        soma = 0
        @produtos.each{ |produto| soma = soma + (produto.preco * quantidade(produto))}
        soma
    end

    def produtos
        @produtos
    end

    def quantidade(produto) 
        @quantidade.at(get_indice_do_produto(produto))
    end

    def relatorio()
        relatorio_novo = ""
        @produtos.each{|produto| 
            if @produtos.last() == produto
                relatorio_novo << (produto.titulo+" adicionado em "+@data_inicial.at( get_indice_do_produto(produto)) )
            else
                relatorio_novo << (produto.titulo+" adicionado em "+@data_inicial.at( get_indice_do_produto(produto))+", " )   
            end
        }
        relatorio_novo
    end

    private 

    def get_indice_do_produto produto
        @produtos.index(produto)
    end

    def adiciona_mais_um_do_produto produto
        indice = get_indice_do_produto(produto)
        @quantidade[indice] = @quantidade[indice] + 1
    end

end

class Produto

    attr_reader :titulo, :preco

    def initialize( titulo, preco)
        @titulo = titulo
        @preco = preco
    end

    def preco
        @preco
    end

    def titulo
        @titulo
    end


end