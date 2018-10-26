class Frase
  def initialize(frase)
    @frase = frase
  end

  def conte_palavras
    contador = Hash.new(0)
    filtro.split.each { |palavra| contador[palavra] += 1 }
    contador
  end

  def filtro
    @frase.downcase.gsub(/[^a-z0-9]/, ' ')
  end
end
