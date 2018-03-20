class Carrinho
  attr_reader :itens
  def initialize
    @itens = []
  end

  def incluir(produto)
    item = item_contendo(produto)
    if item
      alterar_quantidade(item.produto, item.quantidade + 1)
    else
      itens << Item.new(produto)
    end
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

  def relatorio
    itens.map(&:mensagem_para_relatorio).join(', ')
  end

  private

  def item_contendo(produto)
    itens.detect { |item| item.produto == produto }
  end
end

class Item
  attr_reader :produto, :quantidade, :data
  def initialize(produto)
    @produto = produto
    @quantidade = 1
    @data = Time.now
  end

  def mensagem_para_relatorio
    "#{produto.nome} adicionado em #{data_formatada}"
  end

  def total
    produto.preco * quantidade
  end

  def data_formatada
    data.strftime('%d/%m/%y %I:%M%p')
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
