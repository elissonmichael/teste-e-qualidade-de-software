require_relative 'aviao.rb'
class Airbus < Aviao
    def altitude_de_cruzeiro
        altitude_maxima
    end
end


puts aviao = Airbus.new().altitude_de_cruzeiro