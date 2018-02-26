require 'minitest/autorun'

class DistanciaEntreSequencias
  def self.calcular(dna1, dna2)
  cont = 0
  raise  ArgumentError.new("tamanho diferente") if dna1.size != dna2.size
   for i in 0..dna1.size
		if dna1[i] != dna2[i]
			cont = cont + 1
		end
   end
   cont
  end
end
