class DistanciaEntreSequencias

  def self.calcular sequencia1, sequencia2
    raise ArgumentError unless sequencia1.size == sequencia2.size
    count = 0
    for i in 0..sequencia1.size
      count += 1 unless sequencia1[i] == sequencia2 [i]
    end
    count
  end
end
