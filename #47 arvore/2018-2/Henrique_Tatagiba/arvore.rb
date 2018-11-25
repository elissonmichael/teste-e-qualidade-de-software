class Arvore
  attr_reader :idade, :altura, :frutas, :viva

  def initialize
    @idade = 0
    @altura = 0
    @frutas = 0
  end

  def viva?
    @idade < 99
  end

  def passar_um_ano
    @idade += 1
    @altura += 0.5
    @frutas = 0
    if @idade >= 2 && viva?
      @frutas = 10
    end
  end

  def pegar_uma_fruta
    @frutas -= 1 unless @frutas.eql?(0)
  end
end
