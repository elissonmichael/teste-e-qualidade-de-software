class Arvore
  attr_accessor :idade, :altura, :frutas, :viva

  def initialize (idade = 0, altura = 0, frutas = 0, viva = true)
    @idade = idade
    @altura = altura
    @frutas = frutas
    @viva = viva
  end

  def passar_um_ano() 
    @idade += 1
    @altura += 0.5
    dar_frutos()
  end

  def dar_frutos()
    if @idade > 2 && viva()
      @frutas += 1
    end
    if @idade >= 100
      @frutas = 0
    end
  end

  def viva?()
    true if @idade < 100
  end

  def pegar_uma_fruta() 
    @frutas -= 1 unless @frutas <= 0
  end

end
