require 'minitest/autorun'
require 'minitest/pride'
require 'date'
require_relative './Amigo'
require_relative './Revista'
require_relative './Banca'

describe Banca do

  before do
    @banca = Banca.new
    @revista = Revista.new('Batman', 1, 1970)
    @amigo = Amigo.new("Bernardo", "Maria", "Ucam")
  end

  describe :adicionarRevista do

    it 'Deve adicionar uma revista a banca' do
      @banca.adicionarRevista(@revista)
      @banca.revistas.size.must_equal 1
    end

  end

  describe :disponivel? do
    before do
      @banca.adicionarRevista(@revista)
    end

    it 'Deve verificar se revista está disponível' do
      @banca.disponivel?(@revista).must_equal true
    end
  end

  describe :emprestar do

    before do
      @banca.adicionarRevista(@revista)
      
    end

    it 'Indisponibiliza a revista ao empresta-la' do
      @banca.emprestar(@revista, @amigo, Date.today)
      @banca.disponivel?(@revista).must_equal false
    end

    it 'Não deve emprestar revista se a mesma não for disponível' do
      @banca.emprestar(@revista, @amigo, Date.today)
      @banca.emprestar(@revista, @amigo, Date.today)
      @banca.emprestimos.size.must_equal 1
    end


  end

end