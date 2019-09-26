class Produto
  attr_reader :nome, :valor

  def initialize(nome, valor)
    @nome = nome
    @valor = valor
  end
end

class Carrinho

  attr_reader :produtos

  def initialize
    @produtos = []
  end

  def incluir(produto)
    if @produtos.include?(procura_item(produto))
      procura_item(produto).incrementa_quantidade
    else
      @produtos << Item.new(produto)
    end
  end

  def produtos
    @produtos.map{ |item| item.produto}
  end

  def remover(produto)
    @produtos.delete(procura_item(produto))
  end

  def quantidade(produto)
    procura_item(produto).quantidade
  end

  def alterar_quantidade(produto,quantidade)
    if quantidade < 1
      @produtos.delete(procura_item(produto))
    else
      procura_item(produto).alterar_quantidade_do_item(quantidade)
    end
  end

  def total
    @produtos.sum(&:total_do_produto)
  end

  def relatorio
    relatorio = []
    data = Time.now.strftime('%d/%m/%y %I:%M%p')
    @produtos.each do | item |
      relatorio << "#{item.produto.nome} adicionado em #{data}"
    end
    relatorio.join(", ")
  end

  private

  def procura_item(produto)
    @produtos.detect { |item| item.produto == produto }
  end
end

class Item
  attr_reader :produto, :quantidade

  def initialize(produto)
    @produto = produto
    @quantidade = 1
  end

  def alterar_quantidade_do_item(quantidade)
    @quantidade = quantidade
  end

  def total_do_produto
    quantidade * @produto.valor
  end

  def incrementa_quantidade
    @quantidade += 1
  end

end
