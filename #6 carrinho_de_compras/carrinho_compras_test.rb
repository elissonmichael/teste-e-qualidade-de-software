require 'minitest/autorun'
require_relative 'saaaa-/nome'

class CarrinhoTest < Minitest::Test
  def setup
    @produto  = Produto.new('Mass Effect 3', 50)
    @bioshock = Produto.new('BioShock 2', 40)
    @carrinho = Carrinho.new
  end

  def adiciona_10_produtos_iguais
    10.times { @carrinho.incluir(@produto) }
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

  def test_se_produtos_sao_unicos
    adiciona_10_produtos_iguais
    assert_equal @carrinho.produtos, [@produto]
  end

  def test_aumento_de_quantidade_do_produto
    @carrinho.incluir(@produto)
    assert_equal @carrinho.quantidade(@produto), 1
    @carrinho.alterar_quantidade(@produto, 2)
    assert_equal @carrinho.quantidade(@produto), 2
  end

  def test_quantidade_de_um_mesmo_produto_adicionado_novamente
    adiciona_10_produtos_iguais
    assert_equal @carrinho.quantidade(@produto), 10
  end

  def test_diminuicao_de_quantidade_de_produtos
    adiciona_10_produtos_iguais
    @carrinho.alterar_quantidade(@produto, 5)
    assert_equal @carrinho.quantidade(@produto), 5
  end

  def test_calculo_de_preco_total
    @carrinho.incluir(@produto)
    @carrinho.incluir(@bioshock)
    @carrinho.alterar_quantidade(@bioshock, 2)
    assert_equal @carrinho.total, 130
  end

  def test_impressao_do_relatorio_com_data_inclusao_de_cada_produto
    @carrinho.incluir(@produto)
    @carrinho.incluir(@bioshock)
    data = Time.now.strftime('%d/%m/%y %I:%M%p')
    relatorio = "Mass Effect 3 adicionado em #{data}, BioShock 2 adicionado em #{data}"
    assert_equal @carrinho.relatorio, relatorio
  end
end
