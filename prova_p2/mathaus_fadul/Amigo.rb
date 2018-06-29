require_relative 'Revista'

class Amigo
	attr_reader :nome, :nome_mae, :local, :revistas
	def initialize(nome, nome_mae, local)
		@nome = nome
		@nome_mae = nome_mae
		@local = local
		@revistas = []
	end
	
	def pegar_emprestado(revista)
		revista.set_emprestada(revista)
		@revistas << revista
	end
	
	def pedir_emprestimo(revista)
		 if revista.emprestada
			nil
		 end
	 end

	def verificar_emprestimos()
		@amigo.revistas.map{|n|n.emprestada == true}
	end
end