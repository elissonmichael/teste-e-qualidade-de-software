require 'minitest/autorun'
require_relative 'resistores'

class ResistoresTest < Minitest::Test
  def test_marrom_preto
    assert_equal 10, Resistores.valor(["marrom", "preto"])
  end
  def test_vermelho_laranja
    assert_equal 23, Resistores.valor(["vermelho", "laranja"])
  end
  def test_amarelo_verde
    assert_equal 45, Resistores.valor(["amarelo", "verde"])
  end
  def test_azul_violeta
    assert_equal 67, Resistores.valor(["azul", "violeta"])
  end
  def test_cinza_branco
    assert_equal 89, Resistores.valor(["cinza", "branco"])
  end
end
