class Carrinho
  attr_reader :pedidos
  def initialize(args)
    @pedido_class = args[:pedido_class]
    @pedidos      = []
  end

  def adicionar(produto)
    @pedidos << @pedido_class.new(produto)
  end

  def produtos
    pedidos.map(&:produto)
  end

  def alterar_quantidade(produto, nova_quantidade)
    encontra_pedido_com(produto).alterar_quantidade(nova_quantidade)
  end

  def quantidade(produto)
    encontra_pedido_com(produto).quantidade
  end

  def total
    pedidos.sum(&:total)
  end

  private
  def encontra_pedido_com(produto)
    pedidos.detect{ |pedido| pedido.produto == produto }
  end
end
