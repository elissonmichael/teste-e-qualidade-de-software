class Aviao
attr_reader :tipo
  def initialize(tipo)
    @tipo = tipo
  end

  def altitude_de_cruzeiro
    tipo.altitude_de_cruzeiro
  end
end
class Concorde
  def altitude_de_cruzeiro
    valores = Valores.new
    valores.altitude_maxima - valores.contagem_de_passageiros
  end
end
class Airbus
  def altitude_de_cruzeiro
    valores = Valores.new
    valores.altitude_maxima
  end
end
  class Boeing
    def altitude_de_cruzeiro
    valores = Valores.new
    valores.altitude_maxima - valores.consumo_de_combustivel
    end
  end
class Valores
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
