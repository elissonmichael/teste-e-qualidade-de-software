class Personagem
  attr_reader  :vida, :forca, :destreza, :inteligencia, :sabedoria, :carisma
  def initialize
    @forca = habilidades()
    @destreza = habilidades()
    @constituicao = habilidades()
    @inteligencia =  habilidades()
    @sabedoria =  habilidades()
    @carisma = habilidades()
    @moficadorContituicao = modificador(@constituicao)
    @hitpoints = 10 + @moficadorContituicao
  end

  def habilidades
    dado1 = rand 1..6
    dado2 = rand 1..6
    dado3 = rand 1..6
    dado4 = rand 1..6

    dadoMin = [dado1,dado2].min
    dadoMin = [dadoMin,dado3].min
    dadoMin = [dadoMin, dado4].min

    return dado1 + dado2 + dado3 + dado4 - dadoMin
    end

    def modificador(entrada)
      return (entrada - 10) / 2
    end


end
