require 'minitest/autorun'
#require_relative 'aaaa-ss/seu_nome'

describe Complemento, '.do_dna' do
  describe 'Transcreve Sequências Válidas' do
    it { Complemento.do_dna('C').must_equal 'G'                       }
    it { Complemento.do_dna('G').must_equal 'C'                       }
    it { Complemento.do_dna('T').must_equal 'A'                       }
    it { Complemento.do_dna('A').must_equal 'U'                       }
    it { Complemento.do_dna('AATT').must_equal 'UUAA'                 }
    it { Complemento.do_dna('ACGT').must_equal 'UGCA'                 }
    it { Complemento.do_dna('ACGTGGTCTTAA').must_equal 'UGCACCAGAAUU' }
  end

  describe 'Retorna String Vazia em Sequências Inválidas' do
    it { Complemento.do_dna('U').must_equal ''            }
    it { Complemento.do_dna('XXX').must_equal ''          }
    it { Complemento.do_dna('ACGTXXXCTTAA').must_equal '' }
  end
end
