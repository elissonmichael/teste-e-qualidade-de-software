class Resistores

  def self.value(cores)
    id_cores = %w[preto marrom vermelho laranja amarelo verde azul violeta cinza branco]

    cores.map { |cores| id_cores.index(cores) }.join.to_i

  end

end
