# frozen_string_literal: true

# :nodocs:
class Resistencia
  def self.value(cores)
    codigo_cores = %w[
      preto marrom vermelho
      laranja amarelo verde
      azul violeta cinza
      branco
    ]
    cores.map { |cores| codigo_cores.index(cores) }.join.to_i
  end
end
