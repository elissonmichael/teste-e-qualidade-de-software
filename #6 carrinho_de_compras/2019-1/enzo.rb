class Carrinho
  def initialize
    @produtos = Hash.new(0)
  end

  def total
    @produtos.inject(0) { |total, (produto, quantidade)| total + (produto.valor * quantidade) }
  end

  def produtos
    @produtos.keys
  end

  def remover(produto)
    @produtos.delete(produto)
  end

  def incluir(produto)
    @produtos[produto] += 1
    @produtos.keys
  end

  def quantidade(produto)
    @produtos[produto]
  end

  def alterar_quantidade(produto, quantidade)
    @produtos[produto] = quantidade
  end

  def relatorio
    @produtos.map { |produto, quantidade| "#{produto.nome} adicionado em #{produto.data_inclusao}" }.join(', ')
  end
end

class Produto
  attr_accessor :nome, :valor, :data_inclusao
  def initialize(nome, valor)
    @nome = nome
    @valor = valor
    @data_inclusao = Time.now.strftime('%d/%m/%y %I:%M%p')
  end
end
