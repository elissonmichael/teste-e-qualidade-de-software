class Produto
  attr_accessor :nome, :preco
  def initialize(nome, preco)
    @nome = nome
    @preco = preco
  end
end

class Carrinho
  attr_accessor :produtos
  def initialize
    @produtos = []
  end

  def encontrar(produto)
    @produtos.find { |entrada| entrada == produto }
  end

  def incluir(produto)
    if @produtos.include?(produto)
      encontrar(produto).quantidade += 1
    else
      @produtos << Entrada.new(produto)
    end
  end

  def remover(produto)
    @produtos.delete(produto)
  end

  def alterar_quantidade(produto, quantidade)
    encontrar(produto).quantidade = quantidade
  end

  def quantidade(produto)
    encontrar(produto).quantidade
  end

  def total
    @produtos.sum(&:total_de_cada_produto)
  end

  def relatorio
    @produtos.map { |entrada| "#{entrada.produto.nome} adicionado em #{Time.now.strftime('%d/%m/%y %I:%M%p')}" }.join(', ')
  end
end

class Entrada
  attr_accessor :produto, :quantidade
  def initialize(produto, quantidade = 1)
    @produto = produto
    @quantidade = quantidade
  end

  def ==(other)
    @produto == other
  end

  def total_de_cada_produto
    @produto.preco * @quantidade
  end
end
