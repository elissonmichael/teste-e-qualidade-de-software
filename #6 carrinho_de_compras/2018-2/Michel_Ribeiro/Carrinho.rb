class Carrinho
  attr_accessor :produtos

  def initialize
    @produtos = Array.new()

  end

  def incluir(produto)
    data = Time.now.strftime('%d/%m/%y %I:%M%p')
    produto.data = data
    if @produtos.include? produto
      produto_no_carrinho = @produtos.detect { |e| e == produto  }
      produto_no_carrinho.quantidade += 1
    else
      @produtos.push(produto)
    end
  end

  def remover(produto)
    @produtos.delete(produto)
  end

  def quantidade(produto)
    produto_no_carrinho = @produtos.detect { |e| e == produto  }
    produto_no_carrinho.quantidade
  end

  def alterar_quantidade(produto, nova_quantidade)
    produto_no_carrinho = @produtos.detect { |e| e == produto  }
    produto.quantidade = nova_quantidade
  end

  def total
    total = 0
    @produtos.each { |e| total += e.valor*e.quantidade  }
    total
  end

  def relatorio
    data = Time.now.strftime('%d/%m/%y %I:%M%p')
    nomes_dos_produtos = []
    @produtos.each { |e| nomes_dos_produtos << "#{e.nome} adicionado em #{e.data}" }
    return nomes_dos_produtos*", "
  end

end

class Produto
  attr_accessor :nome, :valor, :quantidade, :data

  def initialize(nome, valor)
    @nome = nome
    @valor = valor
    @quantidade = 1
  end

end
