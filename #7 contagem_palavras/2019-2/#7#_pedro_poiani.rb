
#SOLUÇÃO PEDRO POIANI##

class Frase
    def initialize(palavra)
        @palavra = palavra
    end


    def conte_palavras
        contagem = {}

        vetor = @palavra.split(' ')
        
        for @palavras in vetor
        
            contagem[@palavra.downcase] = contagem[@palavra.downcase] != '' ? contagem[@palavra.downcase].to_i + 1 : 1
            
        end
        
        return contagem
    end
end 