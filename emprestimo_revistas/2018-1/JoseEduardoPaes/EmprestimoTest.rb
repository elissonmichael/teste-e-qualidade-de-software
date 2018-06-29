require 'minitest/autorun'
require 'minitest/pride'
require 'date'
require_relative './Emprestimo'
require_relative './Amigo'
require_relative './Revista'

describe Emprestimo do

  before do
    @amigo = Amigo.new("Bernardo", "Maria", "Ucam")
    @revista = Revista.new('Batman', 1, 1970)
    @emprestimo = Emprestimo.new(@revista, @amigo, Date.new(2018,04,21)) 

  end

  describe 'Criação' do

    it 'Deve testar se emprestimo ocorre para o amigo correto' do
      @emprestimo.amigo.must_equal @amigo
    end

  end

  describe :devolver do

    it 'Garente que data final não pode ser anterior a data inicial' do
      @emprestimo.devolver(Date.new(2017,05,24)).must_equal "Data informada deve ser posterior a data inicial do emprestimo."
    end

  end

end