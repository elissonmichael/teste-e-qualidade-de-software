require 'minitest/autorun'
require_relative 'prova'
require 'date'

class TestProva < Minitest::Test
	
	def setup
		@amigo = Amigo.new("André","Jurema","Ucam")
		@revista = Revista.new("Naruto",255,2006)
		@data = Date.new(2018,03,25)
		@emprestimo = Emprestimo.new(@amigo,@revista,@data)
	end
	
	def test_criar_revista
		assert_equal @revista, @revista
	end
	
	def test_criar_amigo
		assert_equal @amigo, @amigo
	end
	
	def test_criar_emprestimo
		@emprestimo.criaremprestimo()
		assert_equal @emprestimo.listarEmprestimos, [@emprestimo]
	end

	def test_data_emprestimo
		@emprestimo.criaremprestimo()
		assert_equal @emprestimo.datainicial, @data
	end
	
	def test_devolver_livro
		@emprestimo.criaremprestimo()
		@data = Date.new(2018,04,25)
		@emprestimo.devolucao(@data)
		assert_equal @emprestimo.datadevolucao, @emprestimo.diaDaDEvolucao
		assert_equal @emprestimo.listarEmprestimos, []
	end
	
	def test_verificar_data_inicio_termino
		@emprestimo.criaremprestimo()
		@data = Date.new(2018,04,25)
		@emprestimo.devolucao(@data)
		assert_equal @emprestimo.dataEmprestimoDevolucao, 
					 "A data de emprestimo foi dia 2018-03-25 e a de devolução foi dia 2018-04-25"
		assert_equal @emprestimo.listarEmprestimos, []
	end
	
	def test_se_a_data_devolucao_é_certa
		@emprestimo.criaremprestimo()
		@data = Date.new(2018,02,25)
		assert_equal @emprestimo.devolucao(@data), "você não pode devolver um livro na data anterior do emprestimo"
		assert_equal @emprestimo.listarEmprestimos, [@emprestimo]
	end
	
	def test_se_revista_esta_disponivel
		@amigo2 = Amigo.new("Mathus","Maria","Ucam")
		@data2 = Date.new(2018,06,05)
		@emprestimo2 = Emprestimo.new(@amigo2,@revista,@data2)
		assert_equal @emprestimo2.criaremprestimo(), "está revista já foi emprestada"
	end
	
	def test_resvista_emprestada_amigo
		@revista2 = Revista.new("Pantera Negra",2,2018)
		@data3 = Date.new(2018,05,20)
		@emprestimo2 = Emprestimo.new(@amigo,@revista2,@data3)
		assert_equal @emprestimo2.revistaremprestadas(@amigo), [@revista,@revista2] 
	end
	
end
















