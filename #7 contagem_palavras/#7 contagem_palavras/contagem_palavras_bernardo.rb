class Frase
	def initialize(frase)
		@frase = frase
	end

	def divisor
		palavra = @frase.split(/\W+/)
	end

	def conte_palavras
		frequencia = Hash.new(0)
		divisor.each{ |value| frequencia[value.downcase] += 1}
    	frequencia
	end
end
