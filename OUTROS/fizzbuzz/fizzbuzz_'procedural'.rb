def fizzbuzz(numero)
  return 'FizzBuzz' if divisivel_por_15(numero)
  return 'Buzz' if divisivel_por_5(numero)
  return 'Fizz' if divisivel_por_3(numero)
end

def divisivel_por_15(numero)
  divisivel_por(numero, 15)
end

def divisivel_por_5(numero)
  divisivel_por(numero, 5)
end

def divisivel_por_3(numero)
  divisivel_por(numero, 3)
end

def divisivel_por(numero, divisor)
  (numero % divisor).zero?
end
