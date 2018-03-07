require 'minitest/autorun'
require_relative 'aaaa-s/nome'

class CarrinhoTest < Minitest::Test
  def setup
    @produto  = Produto.new('Mass Effect 3', 50)
    @carrinho = Carrinho.new
  end

  def test_adicao_de_produto
    @carrinho.incluir(@produto)
    assert_equal @carrinho.produtos, [@produto]
  end

  def test_remocao_de_produto
    @carrinho.incluir(@produto)
    @carrinho.remover(@produto)
    assert_equal @carrinho.produtos.size, 0
  end

  def test_alteracao_de_quantidade_do_produto
    @carrinho.incluir(@produto)
    assert_equal @carrinho.quantidade(@produto), 1
    @carrinho.alterar_quantidade(@produto, 2)
    assert_equal @carrinho.quantidade(@produto), 2
  end

  def test_calculo_de_preco_total
    @carrinho.incluir(@produto)
    bioshock = Produto.new('BioShock 2', 40)
    @carrinho.incluir(bioshock)
    @carrinho.alterar_quantidade(bioshock, 2)
    assert_equal @carrinho.total, 130
  end
end
