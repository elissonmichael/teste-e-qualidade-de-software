require 'minitest/autorun'
require_relative 'aaaa-s/seu_nome'

class AdolescenteTest < Minitest::Test
  attr_reader :adolescente

  def setup
    @adolescente = Adolescente.new
  end

  def test_afirmar_algo
    assert_equal 'Tanto faz.', adolescente.responder('Tomate. Toma-a-te.')
  end

  def test_gritar
    assert_equal 'Ei, relaxa aí!', adolescente.responder('CUIDADO!')
  end

  def test_perguntar
    assert_equal 'Certo.', adolescente.responder('Essa roupa me deixa gorda?')
  end

  def test_exclamar
    assert_equal 'Tanto faz.', adolescente.responder('Vamos ali atrás do muro!')
  end

  def test_perguntas_gritando
    assert_equal 'Ei, relaxa aí!', adolescente.responder('O QUE DIABOS VOCÊ ESTÁ PENSANDO?')
  end

  def test_gritar_numeros
    assert_equal 'Ei, relaxa aí!', adolescente.responder('1, 2, 3 VAI!')
  end

  def test_gritar_com_caracteres_especiais
    assert_equal 'Ei, relaxa aí!', adolescente.responder('ZUMBIS P%^*Q@#$(*^P, ZUMBIS ESTÃO VINDO!!11!!1!')
  end

  def test_gritar_sem_ponto_de_exclamacao
    assert_equal 'Ei, relaxa aí!', adolescente.responder('EU TE ODEIO')
  end

  def test_afirmacao_contendo_ponto_de_interrogacao
    assert_equal 'Tanto faz.', adolescente.responder('Terminar com ? significa uma pergunta.')
  end

  def test_silencio
    assert_equal 'Ok, que seja!', adolescente.responder('')
  end

  def test_mais_silencio
    assert_equal 'Ok, que seja!', adolescente.responder(nil)
  end
end
