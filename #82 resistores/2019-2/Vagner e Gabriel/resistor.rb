class Resistor
    def resistor(valores)
      cores_resistor = %w[ preto marrom vermelho laranja amarelo verde azul violeta cinza branco]
      valores.map { |valores| cores_resistor.index(valores) }.join.to_i
    end
end

