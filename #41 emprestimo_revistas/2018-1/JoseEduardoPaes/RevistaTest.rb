require 'minitest/autorun'
require 'minitest/pride'
require_relative './Revista'
require_relative './Emprestimo'
require_relative './Amigo'

describe Revista do

  before do
    @revista = Revista.new('Batman', 1, 1970)
  end

  describe 'Criação' do
    
    it 'Deve criar uma revista com a coleção correta' do
      @revista.colecao.must_equal 'Batman'
    end

    it 'Deve criar uma revista com a numero da edição correto' do
      @revista.colecao.must_equal 'Batman'
    end

  end

end