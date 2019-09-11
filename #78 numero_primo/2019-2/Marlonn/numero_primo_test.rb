require 'minitest/autorun'
#require_relative 'aaaa-s/seu_nome'

class IntegerTest < Minitest::Test
  def test_numeros_que_sao_primos
    [2, 3, 5, 7, 11].each { |numero| assert numero.primo? }
  end

  def test_numeros_que_nao_sao_primos
    [-1, 0, 1, 4, 6, 8, 9, 10].each { |numero| refute numero.primo? }
  end
end
