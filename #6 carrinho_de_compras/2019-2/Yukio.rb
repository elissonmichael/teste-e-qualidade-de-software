class Produto
    attr_accessor :nome, :valor, :data
    def initialize(nome, valor)
        @nome = nome
        @valor = valor
        @data = Time.now.strftime('%d/%m/%y %I:%M%p')

    end


end

class Carrinho
    attr_reader :produtos
    def initialize
        @produtos = Array.new(0)
        @quantidade = Array.new(0)
    end

    def incluir(produto)
        @produtos << produto unless @produtos.include?(produto) 
        @quantidade << produto
    end

    def remover(produto)
        @produtos.delete_if { |tamanho| tamanho == produto }
        @quantidade.delete_if { |tamanho| tamanho == produto }
    end

    def quantidade(produto)
        qnt = 0
        @quantidade.each { |prod| qnt+=1 if prod == produto}
        return qnt
    end

    def alterar_quantidade(produto, qnt)
        @quantidade.delete(produto)
        (1..qnt).each { @quantidade << produto }
    end
    def total
       preco = 0
       @quantidade.each { |prod| preco += prod.valor}
       return preco
    end

    def relatorio
        frase = []
        @produtos.each { |prod| frase << "#{prod.nome} adicionado em #{prod.data}" }

        return frase.join(", ")
    end

end

