
class DistanciaEntreSequencias
  def self.calcular (string1, string2)
    raise ArgumentError if string1.size != string2.size

    tamanho_diferenca = 0

    for indice in 0..string1.size.pred
      tamanho_diferenca += 1 if string1[indice] != string2[indice]
    end

    tamanho_diferenca

  end
end
