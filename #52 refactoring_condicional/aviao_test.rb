class Aviao
  def initialize(tipo)
    @tipo = tipo
  end

  def altitude_de_cruzeiro
    case @tipo
    when 'Concorde'
      altitude_maxima - contagem_de_passageiros
    when 'Airbus'
      altitude_maxima
    when 'Boeing'
      altitude_maxima - consumo_de_combustivel
    end
  end

  def altitude_maxima
    1000
  end

  def consumo_de_combustivel
    500
  end

  def contagem_de_passageiros
    250
  end
end

require 'minitest/autorun'

class AviaoTest < Minitest::Test
  def test_altitude_do_concorde
    aviao = Aviao.new('Concorde')
    assert_equal aviao.altitude_de_cruzeiro, 750
  end

  def test_altitude_do_airbus
    aviao = Aviao.new('Airbus')
    assert_equal aviao.altitude_de_cruzeiro, 1000
  end

  def test_altitude_do_boeing
    aviao = Aviao.new('Boeing')
    assert_equal aviao.altitude_de_cruzeiro, 500
  end
end
