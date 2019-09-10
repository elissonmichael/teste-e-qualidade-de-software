require 'minitest/autorun'
require_relative 'numeroprimo.rb'

class IntegerTest < Minitest::Test

        def test_um_numero
            assert 3.primo?
        end

        def testa_primos
            [2,3,5,7,11].each {|numero| assert numero.primo?}
        end

        def testa_nao_primos
            [-1,0,9,2,10].each {|numero| refute numero.primo?}
        end
end