# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'arthur-fernanda'

# :nodoc:
class ResistenciaTest < Minitest::Test
  def test_marrom_e_preto
    # skip
    assert_equal 10, Resistencia.value(%w[marrom preto])
  end

  def test_azul_e_cinza
    # skip
    assert_equal 68, Resistencia.value(%w[azul cinza])
  end

  def test_amarelo_e_violeta
    # skip
    assert_equal 47, Resistencia.value(%w[amarelo violeta])
  end

  def test_laranja_e_laranja
    # skip
    assert_equal 33, Resistencia.value(%w[laranja laranja])
  end
end
