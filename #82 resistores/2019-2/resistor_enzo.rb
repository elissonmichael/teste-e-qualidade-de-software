class Resistor
  @cores = %w[Preto Marrom Vermelho Laranja Amarelo Verde Azul Violeta Cinza Branco]

  def self.valor(lista_de_cores)
    lista_de_cores.each_with_object('') { |cor, valor| valor << @cores.index(cor).to_s }.to_i
  end
end
