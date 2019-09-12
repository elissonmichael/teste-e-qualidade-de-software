class Aviao
    def initialize
        @altitude_maxima = 1000
        @consumo_de_combustivel = 500
        @contagem_de_passageiros = 250
    end
  end


class Concorde < Aviao
    def altitude_de_cruzeiro
        @altitude_maxima - @contagem_de_passageiros
    end    
end

class Airbus < Aviao
    def altitude_de_cruzeiro
        @altitude_maxima
    end    
end

class Boeing < Aviao
    def altitude_de_cruzeiro
        @altitude_maxima - @consumo_de_combustivel
    end    
end
  
  require 'minitest/autorun'
  
  describe Aviao do
    describe '#altitude_de_cruzeiro' do
      it 'retorna altitude de Concorde' do
        Concorde.new.altitude_de_cruzeiro.must_equal 750
      end
  
      it 'retorna altitude de Airbus' do
        Airbus.new.altitude_de_cruzeiro.must_equal 1000
      end
  
      it 'retorna altitude de Boeing' do
        Boeing.new.altitude_de_cruzeiro.must_equal 500
      end
    end
  end