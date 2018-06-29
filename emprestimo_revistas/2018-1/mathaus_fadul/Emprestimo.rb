require 'date'
class Emprestimo
	attr_reader :data_inicial, :data_final, :revista, :valido
	def initialize(revista, data_inicial, data_final)
	@revista = revista
	@data_inicial = data_inicial
	@data_final = data_final
	@valido = true
	end
	
	def efetuar(amigo)
		amigo.pegar_emprestado(@revista)
	end
	
	def verifica_devolucao()
		if data_final < data_inicial
			@valido = false
		end
	end
	
	def encerrar_emprestimo(data_final)
		@data_final = data_final
	end
end