class Carrinho
  attr_reader :itens
  def initialize
    @itens = []
  end

  def incluir(produto)
    itens << Item.new(produto)
  end

  def remover(produto)
    itens.delete(item_contendo(produto))
  end

  def produtos
    itens.map(&:produto)
  end

  def quantidade(produto)
    item_contendo(produto).quantidade
  end

  def alterar_quantidade(produto, nova_quantidade)
    item_contendo(produto).alterar_quantidade(nova_quantidade)
  end

  def total
    itens.sum(&:total)
  end

  private

  def item_contendo(produto)
    itens.detect { |item| item.produto == produto }
  end
end

class Item
  attr_reader :produto, :quantidade
  def initialize(produto)
    @produto = produto
    @quantidade = 1
  end

  def total
    produto.preco * quantidade
  end

  def alterar_quantidade(nova_quantidade)
    @quantidade = nova_quantidade
  end
end

class Produto
  attr_reader :nome, :preco
  def initialize(nome, preco)
    @nome = nome
    @preco = preco
  end
end
