class Frase
  def initialize(texto)
    @texto = texto
  end

  def conte_palavras
    normaliza_divide(@texto).each_with_object({}) { |palavra, contagem| contagem[palavra] = normaliza_divide(@texto).count(palavra) }
  end

  def normaliza_divide(texto)
    texto.downcase.gsub(/[^0-9A-Za.,\n ]/, '').split(/[\n\s,]/).reject(&:empty?)
  end
end
