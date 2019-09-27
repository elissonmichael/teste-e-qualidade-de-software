class Resistencia
	def initialize
		@list_cores = %w{preto marrom vermelho laranja amarelo 
			verde azul violeta cinza branco}
		@cont = 0
	end

	def valor(vetor)
		@cor1 = vetor[0]
 		@cor2 = vetor[1]
 		resistencia
 	end

 	def resistencia
 		while @cont < @list_cores.length
			resistencia_1 = @list_cores.index(@cor1)
			resistencia_2 = @list_cores.index(@cor2)
			@cont += 1
		end
		("#{resistencia_1}" + "#{resistencia_2}").to_i
	end
end

