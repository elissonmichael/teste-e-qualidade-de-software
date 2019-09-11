# frozen_string_literal: true

require_relative 'aviao_test'

# :nodoc:
class Aviao
  def altitude_de_cruzeiro; end

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

# :nodoc:
class Concorde < Aviao
  def altitude_de_cruzeiro
    altitude_maxima - contagem_de_passageiros
  end
end

# :nodoc:
class Airbus < Aviao
  def altitude_de_cruzeiro
    altitude_maxima
  end
end

# :nodoc:
class Boeing < Aviao
  def altitude_de_cruzeiro
    altitude_maxima - consumo_de_combustivel
  end
end

require 'minitest/autorun'

# :nodoc:
class AviaoTest < Minitest::Test
  def test_altitude_do_concorde
    aviao = Concorde.new
    assert_equal aviao.altitude_de_cruzeiro, 750
  end

  def test_altitude_do_airbus
    aviao = Airbus.new
    assert_equal aviao.altitude_de_cruzeiro, 1000
  end

  def test_altitude_do_boeing
    aviao = Boeing.new
    assert_equal aviao.altitude_de_cruzeiro, 500
  end
end
