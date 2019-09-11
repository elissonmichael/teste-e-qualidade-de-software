require_relative 'marlonn.rb'
require 'minitest/autorun'

class ResistoresTest < Minitest::Test

  def test_marrom_e_preto
    assert_equal 10, Resistores.value(%w[marrom preto])

  end

  def test_laranja_e_laranja
    assert_equal 33, Resistores.value(%w[laranja laranja])

  end

  def test_amarelo_e_violeta
    assert_equal 47, Resistores.value(%w[amarelo violeta])

  end

  def test_azul_e_cinza
    assert_equal 68, Resistores.value(%w[azul cinza])

  end

end
