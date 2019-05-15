require 'minitest/autorun'
require_relative 'moeda'

class MoedaTest < Minitest::Test
  include Moeda

  def test_formatacao_de_inteiro
    assert_equal(numero_para_moeda(1000), 'R$1.000,00')
  end

  def test_formatacao_de_float
    assert_equal(numero_para_moeda(1.50), 'R$1,50')
  end

  def test_formatacao_de_string
    assert_equal(numero_para_moeda("1"), 'R$1,00')
  end

  def test_uso_de_delimitadores_para_numeros_grandes
    assert_equal(numero_para_moeda(1000000000), 'R$1.000.000.000,00')
  end

  def test_ausencia_de_delimitadores_em_numeros_pequenos
    assert_equal(numero_para_moeda(12), 'R$12,00')
  end

  def test_mudanca_da_unidade
    assert_equal(numero_para_moeda(1000, unidade: 'USD'), 'USD1.000,00')
  end

  def test_mudanca_da_precisao
    assert_equal(numero_para_moeda(1000.123, :precisao => 3), 'R$1.000,123')
  end

  def test_ausencia_de_separador_quando_precisao_for_0
    assert_equal(numero_para_moeda(1000.123, :precisao => 0), 'R$1.000')
  end

  def test_mudanca_do_delimitador
    assert_equal(numero_para_moeda(1000, :delimitador => '-'), 'R$1-000,00')
  end

  def test_mudanca_do_separador
    assert_equal(numero_para_moeda(1000.1, :separador => '_'), 'R$1.000_10')
  end

  def test_multiplas_opcoes_de_formatacao_simultaneamente
    assert_equal(numero_para_moeda(1000.123, {:precisao => 3, :separador => '_', :delimitador => '-', :unidade => 'USD'}), 'USD1-000_123')
  end
end
