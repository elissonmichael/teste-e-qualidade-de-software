require 'minitest/autorun'
require_relative 'resistor_spec.rb'
class ResistorTest < MiniTest::Test
    
    def test_preto_marrom
        assert_equal 01, Resistor.new().valor(['preto','marrom'])
    end
    
    def test_branco_violeta
        assert_equal 97, Resistor.new().valor(['branco','violeta'])
    end

    def test_vermelho_verde
        assert_equal 25, Resistor.new().valor(['vermelho','verde'])
    end

    def test_branco_amarelo
        assert_equal 94, Resistor.new().valor(['branco','amarelo'])
    end
end