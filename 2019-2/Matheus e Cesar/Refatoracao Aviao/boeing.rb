require_relative 'aviao.rb'
class Boeing < Aviao
    
    def altitude_de_cruzeiro
        altitude_maxima - consumo_de_combustivel
    end

end

puts aviao = Boeing.new().altitude_de_cruzeiro