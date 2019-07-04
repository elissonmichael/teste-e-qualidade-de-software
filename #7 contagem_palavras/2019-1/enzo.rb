class Frase
  def initialize(texto)
    @texto = texto
  end

  def conte_palavras
    normalizar_e_dividir(@texto).each_with_object({}) { |palavra, contagem| contagem[palavra] = normalizar_e_dividir(@texto).count(palavra) }
  end

  def normalizar_e_dividir(texto)
    texto.downcase.gsub(/[^0-9A-Za-z.,\n ]/, '').split(/[\n\s,]/).reject(&:empty?)
  end
end
