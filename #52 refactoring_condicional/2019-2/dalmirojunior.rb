class Aviao


    def altitude_de_cruzeiro
      p 'Incrementar'
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

class Airbus < Aviao
    def altitude_de_cruzeiro
        altitude_maxima
    end
end

class Boeing < Aviao

  def altitude_de_cruzeiro
      altitude_maxima - consumo_de_combustivel
  end

end

class Concorde < Aviao

  def altitude_de_cruzeiro
      altitude_maxima - contagem_de_passageiros
  end


end

p aviao = Airbus.new().altitude_de_cruzeiro 
p aviao = Boeing.new().altitude_de_cruzeiro 
p aviao = Concorde.new().altitude_de_cruzeiro 