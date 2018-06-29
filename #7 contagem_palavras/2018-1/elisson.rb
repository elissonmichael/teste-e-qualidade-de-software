class Frase
  attr_reader :entrada
  def initialize(string_entrada)
    @entrada = string_entrada
  end

  def conte_palavras
    contagem = {}
    palavras.each do |palavra|
      contagem[palavra] ||= 0
      contagem[palavra] += 1
    end
    contagem
  end

  private

  def palavras
    entrada.downcase.split(/\W/).reject(&:empty?)
  end
end
