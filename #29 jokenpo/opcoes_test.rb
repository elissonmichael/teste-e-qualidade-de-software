require "minitest/autorun"
require_relative "2018-1/elisson ruby/opcoes"

class OpcoesTest < Minitest::Test
  def setup
    @tesoura = Tesoura.new
    @papel   = Papel.new
    @pedra   = Pedra.new
  end

  def test_selecao_pedra
    assert_kind_of(Pedra, Opcao.new(1).objeto)
  end

  def test_selecao_papel
    assert_kind_of(Papel, Opcao.new(2).objeto)
  end

  def test_selecao_tesoura
    assert_kind_of(Tesoura, Opcao.new(3).objeto)
  end

  def test_erro_em_opcao_invalida
    assert_raises("Opção Inválida") { Opcao.new(0) }
    assert_raises("Opção Inválida") { Opcao.new(4) }
    assert_raises("Opção Inválida") { Opcao.new(9) }
  end

  def test_que_tesoura_vence_papel
    assert @tesoura.vence(@papel)
  end

  def test_que_papel_vence_pedra
    assert @papel.vence(@pedra)
  end

  def test_que_pedra_vence_tesoura
    assert @tesoura.vence(@papel)
  end

  def test_que_tesoura_nao_vence_pedra
    assert_equal false, @tesoura.vence(@pedra)
  end

  def test_que_pedra_nao_vence_papel
    assert_equal false, @pedra.vence(@papel)
  end

  def test_que_papel_nao_vence_tesoura
    assert_equal false, @papel.vence(@tesouro)
  end
end
