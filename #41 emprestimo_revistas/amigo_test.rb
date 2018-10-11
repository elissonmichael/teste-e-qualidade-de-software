require 'minitest/autorun'
require 'date'
require_relative 'amigo'
require_relative 'revista'


describe Amigo do
  def setup
    @amigo   = Amigo.new('Zézim', 'Judite', 'UCAM')
    @revista = Revista.new('Batman', 1, 2014)
    @data_emprestimo = Date.new(2018, 6, 22)
  end

  describe :pegar_emprestado do
    it "adiciona um empréstimo do amigo" do
      @amigo.pegar_emprestado(@revista, @data_emprestimo)
      @amigo.emprestimos.size.must_equal 1
    end
    it "não empresta uma revista que já foi emprestada" do
      @amigo.pegar_emprestado(@revista, @data_emprestimo)
      @amigo.pegar_emprestado(@revista, @data_emprestimo)
      @amigo.emprestimos.size.must_equal 1
    end
  end

  describe :devolver do
    it "remove o emprestimo do amigo" do
      @amigo.pegar_emprestado(@revista, @data_emprestimo)
      @amigo.devolver(@revista, Date.new(2018, 6, 23))
      @amigo.emprestimos.size.must_equal 0
    end
    it "não deixa devolver em uma data anterior ao emprestimo" do
      @amigo.pegar_emprestado(@revista, @data_emprestimo)
      @amigo.devolver(@revista, Date.new(2018, 6, 21))
      @amigo.emprestimos.size.must_equal 1
    end
  end

  describe :revistas do
    it "retorna as revistas emprestadas" do
      @amigo.pegar_emprestado(@revista, Date.new(2018, 6, 22))
      @amigo.revistas.must_equal [@revista]
      @amigo.devolver(@revista, Date.new(2018, 6, 23))
      @amigo.revistas.must_equal []
      @amigo.pegar_emprestado(@revista, Date.new(2018, 6, 24))
      @amigo.revistas.must_equal [@revista]
    end
  end
end
