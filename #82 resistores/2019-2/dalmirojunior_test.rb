require 'minitest/autorun'
require_relative 'resistores'

class ResistoresTest < Minitest::Test
  def testar_preto_E_marrom
    assert_equal 10, Resistores.value(%w[preto marrom])
  end

  def testar_azul_E_cinza
    assert_equal 68, Resistores.value(%w[azul cinza])
  end

  def testar_violeta_E_amarelo
    assert_equal 47, Resistores.value(%w[violeta amarelo])
  end

  def testar_laranja_e_laranja
    assert_equal 33, Resistores.value(%w[laranja laranja])
  end
end