#require_relative 'aaaa-ss/seu_nome'

describe Complemento, '.do_dna' do
  context 'Transcreve Sequências Válidas' do
    it { expect(Complemento.do_dna('C')).to            eq 'G'            }
    it { expect(Complemento.do_dna('G')).to            eq 'C'            }
    it { expect(Complemento.do_dna('T')).to            eq 'A'            }
    it { expect(Complemento.do_dna('A')).to            eq 'U'            }
    it { expect(Complemento.do_dna('AATT')).to         eq 'UUAA'         }
    it { expect(Complemento.do_dna('ACGT')).to         eq 'UGCA'         }
    it { expect(Complemento.do_dna('ACGTGGTCTTAA')).to eq 'UGCACCAGAAUU' }
  end

  context 'Retorna String Vazia em Sequências Inválidas' do
    it { expect(Complemento.do_dna('U')).to eq            '' }
    it { expect(Complemento.do_dna('XXX')).to eq          '' }
    it { expect(Complemento.do_dna('ACGTXXXCTTAA')).to eq '' }
  end
end
