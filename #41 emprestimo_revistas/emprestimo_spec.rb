require 'minitest/autorun'
require 'date'
# require_relative 'aaaa-s/nome'

class Minitest::Test
  attr_reader :amigo, :revista, :data
  def setup
    @amigo      = Amigo.new(nome = 'Zézim', mae = 'Judite', local = 'UCAM')
    @revista    = Revista.new(colecao = 'Batman', numero = 1, ano = 2014)
    @data       = Date.new(2018, 6, 22)
  end
end

describe Revista do
  describe '#emprestada?' do
    it 'retorna falso quando inicializada' do
      revista.wont_be :emprestada?
    end

    it 'retorna true após um empréstimo' do
      Emprestimo.new(revista, Object.new)
      revista.must_be :emprestada?
    end
  end
end

describe Amigo do
  describe '#pegar_emprestado' do
    it 'adiciona um empréstimo do amigo' do
      amigo.pegar_emprestado(revista, data)
      amigo.emprestimos.size.must_equal 1
    end

    it 'não empresta uma revista que já foi emprestada' do
      2.times { amigo.pegar_emprestado(revista, data) }
      amigo.emprestimos.size.must_equal 1
    end
  end

  describe '#devolver' do
    it 'remove o empréstimo do amigo' do
      amigo.pegar_emprestado(revista, data)
      amigo.devolver(@revista, Date.new(2018, 6, 23))
      amigo.emprestimos.must_be :empty?
    end

    it 'não deixa devolver em uma data anterior ao empréstimo' do
      amigo.pegar_emprestado(revista, data)
      amigo.devolver(revista, Date.new(2018, 6, 21))
      amigo.emprestimos.size.must_equal 1
    end
  end

  describe '#revistas' do
    it 'retorna as revistas emprestadas' do
      amigo.pegar_emprestado(revista, Date.new(2018, 6, 22))
      amigo.revistas.must_equal [revista]

      amigo.devolver(revista, Date.new(2018, 6, 23))
      amigo.revistas.must_equal []

      amigo.pegar_emprestado(revista, Date.new(2018, 6, 24))
      amigo.revistas.must_equal [revista]
    end
  end
end

describe Emprestimo do
  before do
    @emprestimo = Emprestimo.new(revista, data)
  end

  describe '#devolver' do
    it 'atualiza devolução quando a data é válida' do
      data_valida = Date.new(2018, 6, 23)
      @emprestimo.devolver(data_valida)
      @emprestimo.data_devolucao.must_equal data_valida
    end

    it 'não atualiza devolução quando a data é inválida' do
      data_invalida = Date.new(2018, 6, 21)
      @emprestimo.devolver(data_invalida)
      @emprestimo.data_devolucao.wont_equal data_invalida
    end
  end

  describe '#devolvido?' do
    it 'retorna false quando inicializado' do
      @emprestimo.wont_be :devolvido?
    end

    it 'retorna true quando devolvido' do
      @emprestimo.devolver(Date.new(2018, 6, 23))
      @emprestimo.must_be :devolvido?
    end
  end
end
