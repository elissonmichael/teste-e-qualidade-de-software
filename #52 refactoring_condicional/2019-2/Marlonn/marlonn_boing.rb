require_relative 'marlonn_aviao.rb'

class Boeing < Aviao

  def altitude_de_cruzeiro
    altitude_maxima - consumo_de_combustivel
  end
  
end
