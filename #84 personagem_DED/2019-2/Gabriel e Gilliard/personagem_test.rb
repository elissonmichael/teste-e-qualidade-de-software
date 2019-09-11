require 'minitest/autorun'
require_relative 'personagem'

class PersonagemTest < Minitest:: Test
  def test_habilidade_14_para_2_modficador
    personagem = Personagem.new
    assert_equal(2, personagem.modificador(14))
  end

  def teste_habilidade_13_para_1_modificador
    personagem = Personagem.new
    assert_equal(1, personagem.modificador(13))
  end

  def teste_habilidade_5_para_menos_3_modificador
    personagem = Personagem.new
    assert_equal(-3, personagem.modificador(5))
  end
  def teste_verifica_se_3_e_15_esta_incluido_forca
      personagem = Personagem.new
      assert_includes(3..15, personagem.forca)
    end
  def teste_verifica_se_3_e_10_esta_incluido_inteligencia
        personagem = Personagem.new
        assert_includes(3..10, personagem.inteligencia)
    end
  def teste_verifica_se_3_e_18_esta_incluido_sabedoria
        personagem = Personagem.new
        assert_includes(3..18, personagem.sabedoria)
    end
  def teste_verifica_se_3_e_16_esta_incluido_carisma
        personagem = Personagem.new
        assert_includes(3..16, personagem.carisma)
    end

end
