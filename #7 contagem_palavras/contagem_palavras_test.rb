require 'minitest/autorun'
# require_relative 'aaaa-s/nome'

class ContagemPalavrasTest < Minitest::Test
  def test_conta_uma_palavra
    frase = Frase.new('palavra')
    contagem = { 'palavra' => 1 }
    assert_equal contagem, frase.conte_palavras
  end

  def test_conta_uma_de_cada_palavra
    skip
    frase = Frase.new('uma de cada')
    contagem = { 'uma' => 1, 'de' => 1, 'cada' => 1 }
    assert_equal contagem, frase.conte_palavras
  end

  def test_multiplas_ocorrencias_de_uma_palavra
    skip
    frase = Frase.new('um peixe dois peixe vermelho peixe azul peixe')
    contagem = { 'um' => 1, 'peixe' => 4, 'dois' => 1,
                 'vermelho' => 1, 'azul' => 1 }
    assert_equal contagem, frase.conte_palavras
  end

  def test_frase_sem_espacos
    skip
    frase = Frase.new('um,dois,quatro')
    contagem = { 'um' => 1, 'dois' => 1, 'quatro' => 1 }
    assert_equal contagem, frase.conte_palavras
  end

  def test_frase_com_quebras_de_linha
    skip
    frase = Frase.new("um,\ndois,\nquatro")
    contagem = { 'um' => 1, 'dois' => 1, 'quatro' => 1 }
    assert_equal contagem, frase.conte_palavras
  end

  def test_ignora_pontuacao
    skip
    frase = Frase.new('carro: tapete como java: javascript!!&@$%^&')
    contagem = { 'carro' => 1, 'tapete' => 1, 'como' => 1,
                 'java' => 1, 'javascript' => 1 }
    assert_equal contagem, frase.conte_palavras
  end

  def test_inclusao_de_numeros
    skip
    frase = Frase.new('testando, 1, 2 testando')
    contagem = { 'testando' => 2, '1' => 1, '2' => 1 }
    assert_equal contagem, frase.conte_palavras
  end

  def test_normaliza_maiusculas
    skip
    frase = Frase.new('vai Vai VAI Para para')
    contagem = { 'vai' => 3, 'para' => 2 }
    assert_equal contagem, frase.conte_palavras
  end

  def test_com_aspas
    skip
    frase = Frase.new("Ele quis dizer 'grande' ou grande?")
    contagem = { 'ele' => 1, 'quis' => 1, 'dizer' => 1, 'grande' => 2,
                 'ou' => 1 }
    assert_equal contagem, frase.conte_palavras
  end
end
