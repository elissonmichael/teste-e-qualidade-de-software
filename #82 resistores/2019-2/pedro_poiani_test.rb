require 'minitest/autorun'
require_relative ''

class ResistenciaTest < Minitest::Test
    def test_laranja_e_laranja
        assert_equal 33, Testecores.value(%w[laranja laranja])
      end
   def test_marrom_e_preto
    assert_equal 10, Testecores.value(%w[marrom preto])
  end
  def test_amarelo_e_violeta
    assert_equal 47, Testecores.value(%w[amarelo violeta])
  end
  
  def test_azul_e_cinza
    assert_equal 68, Testecores.value(%w[azul cinza])
  end
 
end
