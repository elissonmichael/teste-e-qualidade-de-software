require 'minitest/autorun'
# require_relative 'aaaa-s/nome'

# Exercise Based on Hamming
class DistanciaEntreSequenciasTest < Minitest::Test
  def test_sequencias_vazias
    assert_equal 0, DistanciaEntreSequencias.calcular('', '')
  end

  def test_sequencias_iguais
    assert_equal 0, DistanciaEntreSequencias.calcular('A', 'A')
  end

  def test_sequencias_longas_e_iguais
    assert_equal 0, DistanciaEntreSequencias.calcular('GGACTGA', 'GGACTGA')
  end

  def test_tamanho_da_distancia_em_sequencias_com_um_valor
    assert_equal 1, DistanciaEntreSequencias.calcular('A', 'G')
  end

  def test_tamanho_da_distancia_em_sequencias_pequenas
    assert_equal 2, DistanciaEntreSequencias.calcular('AG', 'CT')
  end

  def test_tamanho_da_distancia_pequeno_em_sequencias_pequenas
    assert_equal 1, DistanciaEntreSequencias.calcular('AT', 'CT')
  end

  def test_tamanho_da_distancia_pequeno
    assert_equal 1, DistanciaEntreSequencias.calcular('GGACG', 'GGTCG')
  end

  def test_tamanho_da_distancia_pequeno_em_sequencias_longas
    assert_equal 2, DistanciaEntreSequencias.calcular('ACCAGGG', 'ACTATGG')
  end

  def test_letra_diferente_na_primeira_sequencia
    assert_equal 1, DistanciaEntreSequencias.calcular('AAG', 'AAA')
  end

  def test_letra_diferente_na_segunda_sequencia
    assert_equal 1, DistanciaEntreSequencias.calcular('AAA', 'AAG')
  end

  def test_mesma_sequencia_em_diferentes_posicoes
    assert_equal 2, DistanciaEntreSequencias.calcular('TAG', 'GAT')
  end

  def test_distancias_longas
    assert_equal 4, DistanciaEntreSequencias.calcular('GATACA', 'GCATAA')
  end

  def test_distancias_longas_em_sequencias_com_um_deslocamento
    assert_equal 9, DistanciaEntreSequencias.calcular('GGACGGATTCTG',
                                                      'AGGACGGATTCT')
  end

  def test_proibicao_da_primeira_sequencia_maior
    assert_raises(ArgumentError) do
      DistanciaEntreSequencias.calcular('AATG', 'AAA')
    end
  end

  def test_proibicao_da_segunda_sequencia_maior
    assert_raises(ArgumentError) do
      DistanciaEntreSequencias.calcular('ATA', 'AGTG')
    end
  end
end
