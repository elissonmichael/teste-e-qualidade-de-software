class Arvore
  IDADE_MAXIMA = 100

  attr_reader :idade, :altura, :frutas
  def initialize
    @idade  = 0
    @frutas = 0
    @altura = 0.0
  end

  def viva?
    @idade < IDADE_MAXIMA
  end

  def passar_um_ano
    @idade  += 1
    @altura += 0.5
    @frutas = @idade > 2 && viva? ? 10 : 0
  end

  def pegar_uma_fruta
    @frutas -= 1 unless frutas.zero?
  end
end
