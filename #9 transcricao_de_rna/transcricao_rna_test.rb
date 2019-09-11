require 'minitest/autorun'
#require_relative 'aaaa-ss/seu_nome'

class TranscricaoRNATest < Minitest::Test
  def test_transcricao_de_g_para_c
    assert_equal 'G', Complemento.do_dna('C')
  end

  def test_transcricao_de_c_para_g
    assert_equal 'C', Complemento.do_dna('G')
  end

  def test_transcricao_de_a_para_t
    assert_equal 'A', Complemento.do_dna('T')
  end

  def test_transcricao_de_u_para_a
    assert_equal 'U', Complemento.do_dna('A')
  end

  def test_complemento_de_uma_sequencia_de_rna
    assert_equal 'UUAA', Complemento.do_dna('AATT')
    assert_equal 'UGCA', Complemento.do_dna('ACGT')
    assert_equal 'UGCACCAGAAUU', Complemento.do_dna('ACGTGGTCTTAA')
  end

  def test_lida_com_entrada_incorreta_de_rna
    assert_equal '', Complemento.do_dna('U')
  end

  def test_lida_corretamente_com_entrada_invalida
    assert_equal '', Complemento.do_dna('XXX')
  end

  def test_lida_corretamente_com_entrada_parcialmente_invalida
    assert_equal '', Complemento.do_dna('ACGTXXXCTTAA')
  end
end
