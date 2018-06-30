require 'date'

class Revista 
	attr_reader :colecao, :numero, :ano 
	
	def initialize(colecao, numero, ano)
		@colecao = colecao 
		@numero = numero 
		@ano = ano 
	end 
	
end 

class Amigo
	attr_reader :nome, :nome_da_mae, :local, :data_emprestimo, :data_devolucao
	
	def initialize(nome, nome_da_mae, local)
		@nome = nome
		@nome_da_mae = nome_da_mae 
		@local = local
		@revistas_emprestadas = [] 
		@data_emprestimo = nil
		@data_devolucao = nil
	end 
	
	def pegar_emprestado(revista, data)
		if revista_emprestada?(revista) 
			"Revista já foi emprestada"
		else
			@revistas_emprestadas << revista
			@data_emprestimo = data
		end 		
	end 
	
	def devolver(revista, data_devolucao)
		if data_devolucao < @data_emprestimo
			"Data de devolução errada!"
		else 
			@revistas_emprestadas.delete(revista)
			@data_devolucao = data_devolucao 	
		end			
	end 
	
	def revistas_emprestadas
		@revistas_emprestadas
	end 
	
	private	
	def revista_emprestada?(revista)
		@revistas_emprestadas.detect { |re| re == revista }  == revista
	end 
	
end 
