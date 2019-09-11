require 'minitest/autorun'
require_relative 'extensao_string'

class ExtensaoStringTest < Minitest::Test
  def test_titleize_escreve_com_maiuscula_cada_palavra_em_uma_string
    assert_equal "Gabriel", "gabriel".titleize
  end

  def test_titleize_escreve_com_maiuscula_strings_de_uma_palavra
    assert_equal "Gabriel","gabriel".titleize
  end

  def test_titleize_escreve_com_maiuscula_uma_string_toda_em_maiusculo
    assert_equal "Gabriel","GABRIEL".titleize
  end

  def test_titleize_escreve_com_maiuscula_uma_string_com_letras_misturadas
    assert_equal "Gabriel","GaBrIeL".titleize
  end

  def test_blank_retorna_true_quando_a_string_e_vazia
    assert "".blank?
  end

  def test_blank_retorna_true_quando_a_string_contem_apenas_espacos
    assert "  ".blank?
  end

  def test_blank_retorna_true_quando_a_string_contem_apenas_tabs
  assert "\t    ".blank?
    
  end

  def test_blank_retorna_true_quando_a_string_contem_apenas_espacos_e_tabs
    assert " \t ".blank?
  end

  def test_blank_retorna_false_se_a_string_contem_uma_letra
    refute "g ".blank?
  end

  def test_blank_retorna_false_se_a_string_contem_um_numero
    refute"6".blank?
  end
end
