class Frase
    attr_accessor :frase
    def initialize(frase)
      @frase = frase
    end
  
    def contar_palavras()
      palavras = Hash.new(0)
      @frase.downcase.gsub(/[^a-z0-9]/, ' ').split(' ').each do |palavra|
      palavras[palavra]+=1
      end
     palavras
    end
  end