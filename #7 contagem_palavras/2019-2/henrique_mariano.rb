class Frase
    def initialize(frase)
        @frase = frase.delete("\n!!&@$%^&:'?").downcase
    end

    def conte_palavras
        resultado = {}
        if @frase.count(" ") > 0
            @frase.delete(",").split(" ").each do |palavra|
                conta = @frase.delete(",").split(" ").count(palavra)
                resultado = resultado.merge({palavra => conta})
            end
        else    
            @frase.split(",").each do |palavra|
                conta = @frase.split(",").count(palavra)
                resultado = resultado.merge({palavra => conta})
            end
        end
        return resultado
    end
end