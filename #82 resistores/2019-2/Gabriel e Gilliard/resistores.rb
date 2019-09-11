class Resistores
  CORES = %w[Preto Marrom Vermelho Laranja Amarelo Verde Azul Violeta Cinza Branco]
  def self.valor(cor)
    cor.map {|cores| CORES.index(cores.capitalize)}.join.to_i
    end
  end
