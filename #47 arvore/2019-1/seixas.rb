class Arvore
  attr_reader :idade, :altura, :frutas
  
  def initialize
    @idade  = 0
    @altura = 0
    @frutas = 0
  end
  
  def viva?
    idade < 100
  end
  
  def madura?
    idade >= 2
  end
  
  def passar_um_ano
    if self.viva?
      @idade  += 1
      @altura += 0.5
      @frutas  = 0  if frutas > 0 or !self.viva?
      @frutas += 10 if self.madura? and self.viva?
    else
      @frutas = 0
    end
  end

  def pegar_uma_fruta
    @frutas -= 1  if self.viva? and frutas > 0
  end
  
end