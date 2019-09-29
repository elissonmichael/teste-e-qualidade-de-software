class Frase
    def initialize frase
        @frase = frase.downcase.gsub(/[,\n:!&@$%^?''^]/, ' ')
      end
      
      def conte_palavras
        contar = Hash.new(0)
        conte_palavras = @frase.split.each {|palavra| contar[palavra] +=1 }
        contar
      end
end