class Arvore
  attr_reader :idade, :altura, :frutas

  def initialize
    @idade = 0 
    @altura = 0.0
    @frutas = 0
  end

  def viva?
    return true if @idade < 100
  end

  def passar_um_ano
    @idade += 1
    @altura += 0.5
    @frutas += 10
    viva?
  end

  def passar_dez_anos
    10.times {passar_um_ano}
    viva?
  end

  def pegar_uma_fruta
    @frutas -= 1 unless @frutas = 0  
  end

end