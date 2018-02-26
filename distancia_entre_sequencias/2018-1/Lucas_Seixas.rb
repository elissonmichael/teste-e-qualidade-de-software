class DistanciaEntreSequencias
  def self.calcular(dna1, dna2)
    diff = 0
    raise ArgumentError unless dna1.length == dna2.length

    dna2letras = dna2.split(//)

    dna1.each_char.with_index(0) do |letra, i|
      diff += 1 unless dna2letras[i] == letra.to_s
    end

    diff
  end
end
