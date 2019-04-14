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

  def incluir(produto)
    if @produtos.include?(produto)
      @produtos[@produtos.index(produto)].quantidade += 1
    else
      @produtos << Entrada.new(produto)
    end
  end

  def remover(produto)
    @produtos.delete(produto)
  end

  def alterar_quantidade(produto, quantidade)
    @produtos[@produtos.index(produto)].quantidade = quantidade
  end

  def quantidade(produto)
    @produtos[@produtos.index(produto)].quantidade
  end

  def total
    @produtos.reduce(0) { |total, entrada| total + entrada.produto.preco * entrada.quantidade }
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
end
