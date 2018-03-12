class  Frase

    def initialize frase
        @frase = frase.downcase.gsub(/(\\n)|[^a-z0-9]/, ' ')
    end
    def conte_palavras
        valor = Hash.new(0)
        quantidade = @frase.split.each{|palavra| valor[palavra] +=1 }
        valor
    end
end