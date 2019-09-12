require_relative 'resistor.rb'

require 'minitest/autorun'

describe Resistor do
  describe '#teste da soma dos resistores' do
    it 'testa valor preto e marrom' do
     Resistor.new().valor(['preto','marrom']).must_equal 01
    end
    it'testa valor branco e violeta' do
      Resistor.new.valor(['branco', 'violeta']).must_equal 97
    end
    it'testa valor cinza e vermelho' do
      Resistor.new.valor(['cinza', 'vermelho']).must_equal 82
    end
end

end
