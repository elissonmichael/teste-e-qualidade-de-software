require 'minitest/autorun'
require_relative 'carrinho'

describe Carrinho do
  def setup
    @carrinho      = Carrinho.new(pedido_class: Minitest::Mock)
    @produto_dummy = Object.new
    @carrinho.adicionar(@produto_dummy)
    @pedido_mock   = @carrinho.pedidos.first
  end

  describe :produtos do
    it "retorna os produtos adicionados" do
      @pedido_mock.expect(:produto, @produto_dummy)
      @carrinho.produtos.must_equal [@produto_dummy]
    end
  end

  describe :alterar_quantidade do
    it "envia uma mensagem de comando para pedido" do
      @pedido_mock.expect(:produto, @produto_dummy)
      @pedido_mock.expect(:alterar_quantidade, true, [3])
      @carrinho.alterar_quantidade(@produto_dummy, 3)
      @pedido_mock.verify
    end
  end

  # Segundo Metz não precisamos testar mensagens de saída
  # que sejam apenas consultas, esse teste poderia ser removido.
  describe :total do
    it "envia uma mensagem de consulta para pedido" do
      @pedido_mock.expect(:total, 30)
      @carrinho.total
      @pedido_mock.verify
    end
  end
end
