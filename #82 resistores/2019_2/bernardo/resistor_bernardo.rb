class CoresResistores
  def self.value(cores)
    value = cores.map do |cor|
      case cor
      when "preto" then 0
      when "marrom" then 1
      when "vermelho" then 2
      when "laranja" then 3
      when "amarelo" then 4
      when "verde" then 5
      when "azul" then 6
      when "violeta" then 7
      when "cinza" then 8
      when "branco" then 9

        else puts "Cor nao encontrada"

      end

    end
    
    value.join("").to_i
  end
end
