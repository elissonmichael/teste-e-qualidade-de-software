
require_relative 'resistor.rb'

require 'minitest/autorun'

describe Resistor do
  describe '#soma de cores dos resistores' do
    it 'retorna valor preto e marrom' do
     Resistor.new().valor(['preto','marrom']).must_equal 01
    end
    it'retorna valor branco e violeta' do
      Resistor.new.valor(['branco', 'violeta']).must_equal 97
    end
    it'retorna valor cinza e vermelho' do
      Resistor.new.valor(['cinza', 'vermelho']).must_equal 82
    end

    it 'falha ao retornar o valor esperado de cinza e azul' do
      Resistor.new.valor(['cinza', 'azul']).wont_equal 87
    end
end

end