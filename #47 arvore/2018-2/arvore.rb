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
    if @idade.eql?(0) || @idade == 10
      return 10
    end

    if !viva? || @idade < 2
      return 0
    end

    if @idade >= 2 && viva?
      return 2
    end


  end

end
