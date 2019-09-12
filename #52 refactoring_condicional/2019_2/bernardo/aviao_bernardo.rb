class Aviao
  def initialize(tipo)
    @tipo = tipo
  end

  def altitude_de_cruzeiro
    case @tipo
    when 'Concorde'
      altitude_maxima - contagem_de_passageiros
    when 'Airbus'
      altitude_maxima
    when 'Boeing'
      altitude_maxima - consumo_de_combustivel
    end
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

require 'minitest/autorun'

class Concorde < Aviao
  def altitude_de_cruzeiro
    altitude_maxima - contagem_de_passageiros
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
