class Produto
    attr_accessor :preco, :nome

    def initialize(nome, preco)
      @nome = nome
      @preco = preco
    end

  end

  class Item
    attr_accessor :produto, :quantidade

    def initialize(produto, quantidade)
      @produto = produto
      @quantidade = quantidade
    end
  end
  class Carrinho
    attr_accessor :itens, :quantidade

    def initialize
      @itens = []
      relatorios = []
    end

    def incluir(quantidade=1, item)
      @item = quantidade
      contagem = itens.find_index { |qtd| qtd.produto == item }
      contagem.nil? ? itens << Item.new(item, quantidade) : itens[contagem].quantidade += quantidade
      data = Time.now.strftime('%d/%m/%y %I:%M%p')
    end

    def relatorio(data)
        @item.collect { |documento| relatorios.data << documento.nome}

    end

    def produtos
        @produto = itens
        itens.map { |item| item.produto }

    end

    def quantidade(produto)
      @itens.reduce(0) {|quantidade, produto| quantidade += produto.quantidade}
    end

    def remover(produto)
      @itens.reject! { |item| produto == produto }
      @itens.delete_if

    end


    def alterar_quantidade(produto, quantidade)
      contagem = itens.find_index { |qtd| produto == produto }
      @itens[contagem].quantidade = quantidade
    end

    def total(produto)
      return produto.reduce(:+)
    end
  end