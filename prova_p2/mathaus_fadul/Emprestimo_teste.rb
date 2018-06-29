require 'minitest/autorun'
require 'date'
require_relative 'Revista'
require_relative 'Amigo'
require_relative 'Emprestimo'

class EmprestimoTest < Minitest::Test
	describe 'Criar um empréstimo' do
		def setup
			@revista = Revista.new('Batman', '1', '2000')
			@amigo = Amigo.new('Bruce', 'Marta', 'Gotham')
			@data_inicial = Date.new(2001,1,1)
			@data_final = Date.new(2001,1,15)
			@emprestimo = Emprestimo.new(@revista, @data_inicial, @data_final)
		end
		it 'Ao criar um emprestimo o amigo passa a ter a revista na colecao' do
			@emprestimo.efetuar(@amigo)
			@amigo.revistas.size.must_equal 1
		end
	end
	describe 'Verifica emprestimo' do
		def setup
			@revista = Revista.new('Batman', '1', '2000')
			@amigo = Amigo.new('Bruce', 'Marta', 'Gotham')
			@data_inicial = Date.new(2001,1,10)
			@data_final = Date.new(2001,1,9)
			@emprestimo = Emprestimo.new(@revista, @data_inicial, @data_final)
			@emprestimo.efetuar(@amigo)
		end
		it 'Deve ser impossível devolver antes de pegar' do
			@emprestimo.verifica_devolucao()
			@emprestimo.valido.must_equal false
		end
	end
end