require 'minitest/autorun'
require_relative 'resistor_bernardo'

class CoresResistores < Minitest::Test
  def test_marrom_preto
    skip
    assert_equal 10, CoresResistores.value(["marrom", "preto"])
  end

  def test_azul_cinza
    skip
    assert_equal 68, CoresResistores.value(["azul", "cinza"])
  end

  def test_amarelo_violeta
    skip
    assert_equal 47, CoresResistores.value(["amarelo", "violeta"])
  end

  def test_laranja_laranja
    skip
    assert_equal 33, CoresResistores.value(["laranja", "laranja"])
  end
end
