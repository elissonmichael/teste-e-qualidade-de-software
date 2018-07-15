class Pedido
  attr_reader :produto, :quantidade
  def initialize(produto)
    @produto = produto
    @quantidade = 1
  end

  def alterar_quantidade(nova_quantidade)
    @quantidade = nova_quantidade
  end

  def total
    produto.preco * quantidade
  end
end
