class Aviao

    def altitude_de_cruzeiro
     altitude_de_cruzeiro
    end
  
    def altitude_maxima
      1000
    end
  
    def consumo_de_combustivel
      500
    end
  
    def contagem_de_passageiros
      250
    end
  end
  
  class Concorde < Aviao
    def initialize
    end
    def altitude_de_cruzeiro
      altitude_maxima - contagem_de_passageiros
    end
  end
  
  class Airbus < Aviao
    def initialize
    end
    def altitude_de_cruzeiro
      altitude_maxima
    end
  end
  
  class Boeing < Aviao
    def initialize
    end
    def altitude_de_cruzeiro
      altitude_maxima - consumo_de_combustivel
    end
  end
  
  
  require 'minitest/autorun'
  
  describe Aviao do
    describe '#altitude_de_cruzeiro' do
      it 'testa altitude de Concorde' do
        aviao = Concorde.new.altitude_de_cruzeiro.must_equal 750
      end
  
      it 'testa altitude de Airbus' do
        aviao = Airbus.new.altitude_de_cruzeiro.must_equal 1000
      end
  
      it 'testa altitude de Boeing' do
        aviao = Boeing.new.altitude_de_cruzeiro.must_equal 500
       end
    end
  end