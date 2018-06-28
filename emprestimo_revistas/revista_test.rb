require 'minitest/autorun'
require_relative 'revista'
require_relative 'emprestimo'

describe Revista do
  def setup
    @revista = Revista.new('Batman', 1, 2014)
  end

  describe :emprestada? do
    it "retorna falso quando inicializada" do
      @revista.emprestada?.must_be :==, false
    end

    it "retorna verdadeiro quando emprestada" do
      Emprestimo.new(@revista, Object.new)
      @revista.emprestada?.must_be :==, true
    end
  end
end
