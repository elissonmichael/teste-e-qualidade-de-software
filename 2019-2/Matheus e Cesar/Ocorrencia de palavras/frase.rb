class Frase
  def initialize(frase)
    @frase = frase
  end

  def contar_palavras
    contador = Hash.new(0)
    filtrar_palavras.split.each { 
      
      |palavra| contador[palavra] += 1 
      
    }
    
    return contador
   end

  def filtrar_palavras
    @frase.downcase.gsub(/[^a-z0-9]/, ' ')
  end
end

