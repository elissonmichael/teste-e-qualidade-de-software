require 'minitest/autorun'
require_relative 'aviao'
class AviaoTest < Minitest::Test
  def test_altitude_do_concorde
    
   aviao = Aviao.new(Concorde.new)
   assert_equal aviao.altitude_de_cruzeiro, 750
 end

 def test_altitude_do_airbus

   aviao = Aviao.new(Airbus.new)
   assert_equal aviao.altitude_de_cruzeiro, 1000
 end

 def test_altitude_do_boeing
   aviao = Aviao.new(Boeing.new)
   assert_equal aviao.altitude_de_cruzeiro, 500
 end
end
