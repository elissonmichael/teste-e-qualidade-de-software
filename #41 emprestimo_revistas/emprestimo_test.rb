require 'minitest/autorun'
require 'date'
# require_relative 'aaaa-s/nome'

class Minitest::Test
  attr_reader :amigo, :revista, :data
  def setup
    @amigo   = Amigo.new(nome = 'Zézim', mae = 'Judite', local = 'UCAM')
    @revista = Revista.new(colecao = 'Batman', numero = 1, ano = 2014)
    @data    = Date.new(2018, 6, 22)
  end
end

class RevistaTest < Minitest::Test
  def test_retorno_de_boolean_do_metodo_emprestada
    assert_equal false, revista.emprestada?
    Emprestimo.new(revista, Object.new)
    assert_equal true, revista.emprestada?
  end
end

class AmigoTest < Minitest::Test
  def test_pegar_emprestimo
    amigo.pegar_emprestado(revista, data)
    assert_equal 1, amigo.emprestimos.size
  end

  def test_duplicata_de_emprestimo
    2.times { amigo.pegar_emprestado(revista, data) }
    assert_equal 1, amigo.emprestimos.size
  end

  def test_devolucao
    amigo.pegar_emprestado(revista, data)
    amigo.devolver(@revista, Date.new(2018, 6, 23))
    assert amigo.emprestimos.empty?
  end

  def test_devolucao_em_data_anterior_ao_emprestimo
    amigo.pegar_emprestado(revista, data)
    amigo.devolver(revista, Date.new(2018, 6, 21))
    assert_equal 1, amigo.emprestimos.size
  end

  def test_revistas
    amigo.pegar_emprestado(revista, Date.new(2018, 6, 22))
    assert_equal [revista], amigo.revistas

    amigo.devolver(revista, Date.new(2018, 6, 23))
    assert_equal [], amigo.revistas

    amigo.pegar_emprestado(revista, Date.new(2018, 6, 24))
    assert_equal [revista], amigo.revistas
  end
end

class EmprestimoTest < Minitest::Test
  attr_reader :emprestimo
  def setup
    super
    @emprestimo = Emprestimo.new(revista, data)
  end

  def test_devolver
    data_valida = Date.new(2018, 6, 23)
    emprestimo.devolver(data_valida)
    assert_equal data_valida, emprestimo.data_devolucao
  end

  def test_devolucao_em_data_invalida
    data_invalida = Date.new(2018, 6, 21)
    emprestimo.devolver(data_invalida)
    refute_equal data_invalida, emprestimo.data_devolucao
  end

  def test_devolvido
    refute emprestimo.devolvido?
    emprestimo.devolver(Date.new(2018, 6, 23))
    assert emprestimo.devolvido?
  end
end
