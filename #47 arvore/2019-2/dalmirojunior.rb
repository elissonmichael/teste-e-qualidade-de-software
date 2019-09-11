class Arvore
  attr_reader :idade,:frutas,:altura

  def initialize
    @idade = 0
    @altura = 0.0
    @frutas = 0
  end

  def viva?
    @idade <= 99
  end

  def passar_um_ano
    @idade += 1
    @altura += 0.5
    if @idade > 2
      @frutas = 10
    end
    if @idade > 98
      @frutas = 0
    end
  end

  def pegar_uma_fruta
    if @frutas > 0
      @frutas -= 1
    end
  end
end