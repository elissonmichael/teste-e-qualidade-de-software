# frozen_string_literal:true

# :nodoc:
class Personagem
  attr_reader :vida, :forca, :destreza, :inteligencia, :sabedoria, :carisma
  def initialize
    @forca = sortear_habilidades
    @destreza = sortear_habilidades
    @constituicao = sortear_habilidades
    @inteligencia = sortear_habilidades
    @sabedoria =  sortear_habilidades
    @carisma = sortear_habilidades
    @modificar_constituicao = modificar(@constituicao)
    @hitpoints = 10 + @modificar_constituicao
  end

  def sortear_habilidades
    dado1 = rand 1..6
    dado2 = rand 1..6
    dado3 = rand 1..6
    dado4 = rand 1..6

    dado_min = [dado1, dado2].min
    dado_min = [dado_min, dado3].min
    dado_min = [dado_min, dado4].min

    dado1 + dado2 + dado3 + dado4 - dado_min
  end

  def modificar(constituicao_personagem)
    (constituicao_personagem - 10) / 2
  end
end
