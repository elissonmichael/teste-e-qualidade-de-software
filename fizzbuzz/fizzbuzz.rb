def fizzbuzz(numero)
  return 'FizzBuzz' if numero.divisivel_por(15)
  return 'Buzz' if numero.divisivel_por(5)
  return 'Fizz' if numero.divisivel_por(3)
end

class Integer
  def divisivel_por(divisor)
    (self % divisor) == 0
  end
end
