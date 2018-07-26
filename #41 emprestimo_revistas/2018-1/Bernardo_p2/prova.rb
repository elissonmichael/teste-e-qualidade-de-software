class Revista
	attr_accessor(:colecao,:edicao,:ano)

	def initialize(colecao,edicao,ano)
		@colecao = colecao
		@edicao  = edicao
		@ano     = ano
	end

end

class Amigo
	attr_accessor(:nome,:nomeMae,:lugarConhecido)

	def initialize(nome,nomeMae,lugarConhecido)
		@nome 			= nome
		@nomeMae  		= nomeMae
		@lugarConhecido = lugarConhecido
	end
end

class Emprestimo
	attr_accessor(:nomeAmigo,:revistaEmprestada,:diaDoEmprestimo,:diaDaDEvolucao)
	
	def initialize(nomeAmigo,revistaEmprestada,diaDoEmprestimo)
		@nomeAmigo 		   = nomeAmigo
		@revistaEmprestada = revistaEmprestada
		@diaDoEmprestimo   = diaDoEmprestimo
		@diaDaDEvolucao    = nil 
		@ListaDeEmprestimo = []
	end
	
	def criaremprestimo
		@ListaDeEmprestimo << self
	end
	
	def listarEmprestimos
		@ListaDeEmprestimo
	end
	
	def datainicial
		@diaDoEmprestimo
	end
	
	def devolucao(data)
		if (@diaDoEmprestimo < data)
			@diaDaDEvolucao = data
			removerEmprestimo(self)
		else
			valor = "você não pode devolver um livro na data anterior do emprestimo"
		end
	end
	
	def datadevolucao
		@diaDaDEvolucao
	end
	
	def dataEmprestimoDevolucao
		dataemprestimodevolucao = "A data de emprestimo foi dia " + @diaDoEmprestimo.to_s + " e a de devolução foi dia "+ @diaDaDEvolucao.to_s
	end
	
	def revistaremprestadas(amigo)
	
	end
	
	private
	def removerEmprestimo(emprestimo)
		@ListaDeEmprestimo.delete(emprestimo)
	end
	
end



























