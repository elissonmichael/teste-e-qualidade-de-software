require 'minitest/autorun'
require_relative 'fizzbuzz'

class FizzBuzzTest < Minitest::Test
  def test_que_retorna_fizz_quando_3
    assert_equal 'Fizz', fizzbuzz(3)
  end
  def test_que_retorna_fizz_quando_9
    assert_equal 'Fizz', fizzbuzz(9)
  end
  def test_que_retorna_fizz_quando_5
    assert_equal 'Buzz', fizzbuzz(5)
  end
  def test_que_retorna_fizz_quando_10
    assert_equal 'Buzz', fizzbuzz(10)
  end
  def test_que_retorna_fizz_quando_15
    assert_equal 'FizzBuzz', fizzbuzz(15)
  end
  def test_que_retorna_fizz_quando_30
    assert_equal 'FizzBuzz', fizzbuzz(30)
  end
end
