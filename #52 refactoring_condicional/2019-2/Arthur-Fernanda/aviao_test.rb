# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'arthur_fernanda'
# :nodoc:
class AviaoTest < Minitest::Test
  def test_altitude_do_concorde
    aviao = Concorde.new
    assert_equal aviao.altitude_de_cruzeiro, 750
  end

  def test_altitude_do_airbus
    aviao = Airbus.new
    assert_equal aviao.altitude_de_cruzeiro, 1000
  end

  def test_altitude_do_boeing
    aviao = Boeing.new
    assert_equal aviao.altitude_de_cruzeiro, 500
  end
end
