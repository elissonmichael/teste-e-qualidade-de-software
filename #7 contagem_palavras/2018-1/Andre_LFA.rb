class Frase

  def initialize frase
    @frase = frase.gsub(/[,\n:!&@$%^?''']/, ' ').downcase
  end

  def conte_palavras
    resultado = Hash.new(0)
    qnt_palavras = @frase.split.each {|palavra| resultado[palavra] +=1 }
    resultado
  end
end
