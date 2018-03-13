class DistanciaEntreSequencias
  def self.calcular(primeira, segunda)
    raise ArgumentError unless primeira.size == segunda.size
    (0..primeira.length).map { |index| primeira[index] == segunda[index] }
                        .select { |boolean| boolean == false }
                        .size
  end
end
