require 'minitest/autorun'
require_relative 'backpack'

class BackpackTest < MiniTest::Test
  def setup
    @backpack    = Backpack.new(capacity = 10)
    @hammer_mock = MiniTest::Mock.new
  end

  def test_add_item_to_backpack
    @hammer_mock.expect(:size, 3, []) 
    @backpack.add(@hammer_mock)
    assert_includes @backpack.items,  @hammer_mock
    assert_equal    [@hammer_mock], @backpack.items
  end

  def test_backpack_available_space
    @hammer_mock.expect(:size, 3, []) 
    @backpack.add(@hammer_mock)
    assert_equal 7, @backpack.available_space
  end

  def test_quantity_increment 
    skip
    2.times { backpack.add(hammer) }
    assert_equal 2, backpack.quantity(hammer)
    assert_equal 4, backpack.available_space
    assert_equal [hammer], backpack.items
  end

  def test_quantity_wont_increment_when_full
    skip
    4.times { backpack.add(hammer) }
    assert_equal 1, backpack.available_space
    assert_equal 3, backpack.quantity(hammer)
  end

  def test_wont_add_item_when_full
    skip
    full_backpack = Backpack.new(capacity = 0)
    potion        = Item.new(name = 'Mana Potion', size = 1)
    full_backpack.add(potion)
    assert full_backpack.quantity(potion).zero?
    refute_includes full_backpack.items, potion
  end
end
