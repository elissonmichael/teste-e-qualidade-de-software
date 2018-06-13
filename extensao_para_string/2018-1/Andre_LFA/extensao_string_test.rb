require 'minitest/autorun'
require_relative '../../extensao_string.rb'

class ExtensaoStringTest < Minitest::Test

  def test_titleize_escreve_com_maiuscula_cada_palavra_em_uma_string
      assert_equal "string de teste".titleize, 'String De Teste'
  end

  def test_titleize_escreve_com_maiuscula_strings_de_uma_palavra
      assert_equal "string".titleize, 'String'
  end

  def test_titleize_escreve_com_maiuscula_uma_string_toda_em_maiusculo
      assert_equal "STRING DE TESTE".titleize, 'String De Teste'
  end

  def test_titleize_escreve_com_maiuscula_uma_string_com_letras_misturadas
      assert_equal "sTrIng dE tEsTe".titleize, 'String De Teste'
  end

  def test_blank_retorna_true_quando_a_string_e_vazia
      assert_equal "".blank?, true
  end

  def test_blank_retorna_true_quando_a_string_contem_apenas_espacos
    assert_equal "                  ".blank?, true
  end

  def test_blank_retorna_true_quando_a_string_contem_apenas_tabs
    # exemplo: "\t\t\t"
    assert_equal "\t\t\t".blank?, true
  end

  def test_blank_retorna_true_quando_a_string_contem_apenas_espacos_e_tabs
    assert_equal "       \t   \t \t    ".blank?, true
  end

  def test_blank_retorna_false_se_a_string_contem_uma_letra
    assert_equal "a".blank?, false
  end

  def test_blank_retorna_false_se_a_string_contem_um_numero
    assert_equal "string2".blank?, false
  end
end
