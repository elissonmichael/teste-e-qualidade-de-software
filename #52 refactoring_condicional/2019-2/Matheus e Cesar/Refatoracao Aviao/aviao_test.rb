require 'minitest/autorun'
require_relative 'aviao.rb'
require_relative 'boeing.rb'
require_relative 'concorde.rb'
require_relative 'airbus.rb'


class AviaoTest < Minitest::Test

    def testa_altitude_concorde
        aviao = Concorde.new()
        assert_equal aviao.altitude_de_cruzeiro, 750
    end

    def testa_altitude_airbus
        aviao = Airbus.new()
        assert_equal aviao.altitude_de_cruzeiro, 1000
    end

    def testa_altitude_boeing
        aviao = Boeing.new()
        assert_equal aviao.altitude_de_cruzeiro, 500
    end
end