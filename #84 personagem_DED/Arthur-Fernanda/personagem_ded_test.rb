# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'arthur_fernanda'

# :nodoc:
class PersonagemTest < Minitest::Test
  def test_habilidade_14_para_2_modificar
    personagem = Personagem.new
    assert_equal(2, personagem.modificar(14))
  end

  def test_habilidade_13_para_1_modificar
    personagem = Personagem.new
    assert_equal(1, personagem.modificar(13))
  end

  def test_habilidade_5_para_menos_3_modificar
    personagem = Personagem.new
    assert_equal(-3, personagem.modificar(5))
  end

  def test_se_3_e_15_esta_incluido_forca
    personagem = Personagem.new
    assert_includes(3..15, personagem.forca)
  end

  def test_se_3_e_10_esta_incluido_inteligencia
    personagem = Personagem.new
    assert_includes(3..10, personagem.inteligencia)
  end

  def test_se_3_e_18_esta_incluido_sabedoria
    personagem = Personagem.new
    assert_includes(3..18, personagem.sabedoria)
  end

  def test_se_3_e_16_esta_incluido_carisma
    personagem = Personagem.new
    assert_includes(3..16, personagem.carisma)
  end
end
