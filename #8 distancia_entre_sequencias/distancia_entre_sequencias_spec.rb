# require_relative 'aaaa-s/nome'

describe DistanciaEntreSequencias, '.calcular' do
  before do
    @classe = DistanciaEntreSequencias
  end

  context 'sequências de mesmo tamanho' do
    it { expect(@classe.calcular('', '')).to eq 0               }
    it { expect(@classe.calcular('A', 'A')).to eq 0             }
    it { expect(@classe.calcular('GGACTGA', 'GGACTGA')).to eq 0 }
    it { expect(@classe.calcular('A', 'G')).to eq 1             }
    it { expect(@classe.calcular('AG', 'CT')).to eq 2           }
    it { expect(@classe.calcular('AT', 'CT')).to eq 1           }
    it { expect(@classe.calcular('GGACG', 'GGTCG')).to eq 1     }
    it { expect(@classe.calcular('ACCAGGG', 'ACTATGG')).to eq 2 }
    it { expect(@classe.calcular('AAG', 'AAA')).to eq 1         }
    it { expect(@classe.calcular('AAA', 'AAG')).to eq 1         }
    it { expect(@classe.calcular('TAG', 'GAT')).to eq 2         }
    it { expect(@classe.calcular('GATACA', 'GCATAA')).to eq 4   }
    it { expect(@classe.calcular('GGACGGATTCTG', 'AGGACGGATTCT')).to eq 9 }
  end

  context 'sequências de tamanho diferentes' do
    it 'provoca um erro quando a primeira sequência é maior' do
      expect { @classe.calcular('AATG', 'AAA') }.to raise_error(ArgumentError)
    end
    it 'provoca um erro quando a segunda sequência é maior' do
      expect { @classe.calcular('ATA', 'AGTG') }.to raise_error(ArgumentError)
    end
  end
end
