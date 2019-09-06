class Frase
    def initialize(palavras)
        @palavras = palavras
    end


    def conte_palavras
        array = @palavras.downcase.gsub(","," ").split.map!{|x| x=x.gsub(/\W/,"")}
        hash = array.uniq.map{|x| [x,array.count(x)]}.to_h
       return hash
    end
end