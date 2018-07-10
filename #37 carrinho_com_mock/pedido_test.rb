require 'minitest/autorun'
require_relative 'pedido'

describe Pedido do
  def setup
    @produto_mock = MiniTest::Mock.new
    @pedido = Pedido.new(@produto_mock)
  end

  it "permite alterar a quantidade" do
    @pedido.alterar_quantidade(99)
    @pedido.quantidade.must_equal 99
  end

  it "retorna o valor total" do
    @produto_mock.expect(:preco, 30)
    @pedido.total.must_equal 30
  end
end
