class Frase

 def initialize(frase)
    @frase = frase
  end

  def conte_palavras()
    palavras = Hash.new(0)
    @frase.downcase.gsub(/[^a-z0-9]/, ' ').split(' ').each do |palavra|
      palavras[palavra]+=1

    end

    return palavras

  end



end
