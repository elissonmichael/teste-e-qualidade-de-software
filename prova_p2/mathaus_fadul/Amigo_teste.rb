require 'minitest/autorun'
require_relative 'Revista'
require_relative 'Amigo'
require_relative 'Emprestimo'

class Revista_teste < Minitest::Test
	describe 'Verifica revista emprestadas a um amigo' do
		def setup
			@revista = Revista.new('Batman', '1', '2000')
			@amigo = Amigo.new('Bruce', 'Marta', 'Gotham')
			@amigo_2 = Amigo.new('Rob', 'Clair', 'Manhattan')
			@amigo.pegar_emprestado(@revista)
		end
		it 'Deve ter ao menos 1 revista na colecao do amigo' do
			@amigo.revistas.size.must_equal 1
		end
		it 'Não deve ser possível pegar um revista já emprestada' do
			@amigo_2.pedir_emprestimo(@revista).must_be_nil
			@amigo_2.revistas.must_equal []
		end
	end
	describe 'Informar revistas que estão emprestadas' do
		def setup
			@revista = Revista.new('Batman', '1', '2000')
			@revista_2 = Revista.new('Superman', '1', '2000')
			@amigo = Amigo.new('Bruce', 'Marta', 'Gotham')
			@amigo.pegar_emprestado(@revista)
			@amigo.pegar_emprestado(@revista_2)
		end
		it 'Deve retornar revistas com um amigo' do
			@amigo.revistas.must_equal [@revista, @revista_2]
		end
	end
end