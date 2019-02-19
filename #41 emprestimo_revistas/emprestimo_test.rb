require 'minitest/autorun'
require_relative 'emprestimo'
require_relative 'revista'
require 'date'

describe Emprestimo do
  def setup
    @revista = Revista.new('Batman', 1, 2014)
    @emprestimo = Emprestimo.new(@revista, Date.new(2018, 6, 22))
  end

  describe :devolver do
    it "atualiza devolucao com data valida" do
      data_valida = Date.new(2018, 6, 23)
      @emprestimo.devolver(data_valida)
      @emprestimo.data_devolucao.must_equal data_valida
    end

    it "nao atualiza devolucao com data invalida" do
      data_invalida = Date.new(2018, 6, 21)
      @emprestimo.devolver(data_invalida)
      @emprestimo.data_devolucao.wont_equal data_invalida
    end
  end

  describe :devolvido? do
    it "retorna false quando inicializado" do
      @emprestimo.devolvido?.must_equal false
    end

    it "retorna true quando devolvido" do
      @emprestimo.devolver(Date.new(2018, 6, 23))
      @emprestimo.devolvido?.must_equal true
    end
  end
end
