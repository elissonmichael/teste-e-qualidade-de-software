class Revista
	attr_reader :colecao, :edicao, :ano, :emprestada
	def initialize(colecao, edicao, ano)
		@colecao = colecao
		@edicao = edicao
		@ano = ano
		@emprestada = false
	end
	
	def set_colecao(colecao)
		@colecao = colecao
	end
	
	def set_edicao(edicao)
		@edicao = edicao
	end
	
	def set_ano(ano)
		@ano = ano
	end
	
	def set_emprestada(revista)
		@emprestada = true
	end
	
		def set_devolvida(revista)
		@emprestada = false
	end
end