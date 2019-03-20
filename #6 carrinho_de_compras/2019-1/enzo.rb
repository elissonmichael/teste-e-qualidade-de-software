class Carrinho
  def initialize
    @produtos = Hash.new(0)
  end

  def total
    total = 0
    @produtos.each do |produto,quantidade|
      total += quantidade * produto.valor
    end
    return total
  end

  def produtos
    @produtos.keys
  end

  def remover(produto)
    @produtos.delete(produto)
  end

  def incluir(produto)
    @produtos[produto] += 1
    return @produtos.keys
  end

  def quantidade (produto)
    return @produtos[produto]
  end

  def alterar_quantidade(produto, quantidade)
    @produtos[produto] = quantidade
  end

  def relatorio
    relatoriostr = ''
    @produtos.each do |produto,quantidade|
      relatoriostr << "#{produto.nome} adicionado em #{produto.data_inclusao}, "
    end
    relatoriostr[0..-3]
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
