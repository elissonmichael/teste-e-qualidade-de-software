class Frase

  def initialize(frase)
    @frase = frase
  end

  def conte_palavras()
    hash = Hash.new(0)
    @frase.downcase.gsub(/[^a-z0-9]/, ' ').split(' ').each do |palavra|
    hash[palavra]+=1
    end
      return hash
  end

end