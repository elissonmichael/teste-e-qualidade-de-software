require 'minitest/autorun'
require 'minitest/pride'
require_relative './Amigo'
require_relative './Revista'
require_relative './Banca'
require_relative './Emprestimo'

describe Amigo do

  before do
    @amigo = Amigo.new("Bernardo", "Maria", "Ucam")
    @revista = Revista.new('Batman', 1, 1970)
    @revista2 = Revista.new('Batman', 3, 1973)
  end

  describe 'Criação' do

    it 'Deve criar um amigo com seu nome correto'do 
      @amigo.nome.must_equal "Bernardo"
    end

  end

  describe :pegaEmprestado do

    before do
      @amigo.pegaEmprestado(@revista)
      @amigo.pegaEmprestado(@revista2)
    end

    it 'Verifica que revista foi incluida na lista do amigo' do
      @amigo.revistas.must_equal [@revista, @revista2]
    end

  end

  describe :devolverRevista do
    
    before do
      @amigo.pegaEmprestado(@revista)
      @amigo.devolverRevista(@revista)
    end

    it 'Verifica que revista não está mais na lista do amigo' do
      @amigo.revistas.must_equal []
    end

  end

end