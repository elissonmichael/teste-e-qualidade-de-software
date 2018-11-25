class Arvore
  attr_accessor :idade, :altura, :frutas

  def initialize
    @idade = 0
    @altura = 0
    @frutas = 0
  end

  def passar_um_ano
    @idade += 1
    @altura += 0.5
    decidir_quantas_frutas
  end

  def viva?
    return true if @idade < 11
  end

  def pegar_uma_fruta
    @frutas -= 1 unless @frutas.eql?(0)
  end

  def decidir_quantas_frutas
    return @frutas = 0 if !viva? || @idade < 2
    return @frutas = 10 if @idade.odd? || @idade == 10
    return @frutas += 2 if @idade >= 2 && viva?
  end

end
