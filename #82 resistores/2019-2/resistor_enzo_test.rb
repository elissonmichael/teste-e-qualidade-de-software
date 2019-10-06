require_relative 'resistor_enzo'
require 'minitest/autorun'

class ResistorTest < MiniTest::Test
  def test_retorna_valor_correto
    assert_equal 10, Resistor.valor(['Marrom', 'Preto'])
    assert_equal 47, Resistor.valor(['Amarelo', 'Violeta'])
    assert_equal 33, Resistor.valor(['Laranja', 'Laranja'])
  end
end
