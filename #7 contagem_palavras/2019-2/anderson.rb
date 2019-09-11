class Frase
	def initialize(frase)
		@frase = frase
	end

	def separador
		values = @frase.split(/\W+/)
	end

	def conte_palavras
		frequencia = Hash.new(0)
		separador.each{ |value| frequencia[value.downcase] += 1}
    	frequencia
	end
end