require 'minitest/autorun'
require_relative 'backpack'

class BackpackTest < MiniTest::Test
  attr_reader :backpack, :hammer
  def setup
    @backpack = Backpack.new(capacity = 10)
    @hammer   = Item.new(name = 'Mjolnir', size = 3)
  end

  def test_add_item_to_backpack
    backpack.add(hammer)
    assert_includes backpack.items,  hammer
    assert_equal    [hammer], backpack.items
    assert_equal    7,        backpack.available_space
  end

  def test_quantity_increment
    
    2.times { backpack.add(hammer) }
    assert_equal 2, backpack.quantity(hammer)
    assert_equal 4, backpack.available_space
    assert_equal [hammer], backpack.items
  end

  def test_quantity_wont_increment_when_full
    
    4.times { backpack.add(hammer) }
    assert_equal 1, backpack.available_space
    assert_equal 3, backpack.quantity(hammer)
  end

  def test_wont_add_item_when_full
    full_backpack = Backpack.new(capacity = 0)
    potion        = Item.new(name = 'Mana Potion', size = 1)
    full_backpack.add(potion)
    assert full_backpack.quantity(potion).zero?
    refute_includes full_backpack.items, potion
  end
end
