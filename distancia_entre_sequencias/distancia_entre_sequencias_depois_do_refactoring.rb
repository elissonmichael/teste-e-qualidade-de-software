class DistanciaEntreSequencias
  def self.calcular(sequencia_1, sequencia_2)
    raise ArgumentError unless sequencia_1.size == sequencia_2.size
    sequencia_1.chars
               .zip(sequencia_2.chars)
               .count { |dupla| dupla.first != dupla.last }
  end
end
