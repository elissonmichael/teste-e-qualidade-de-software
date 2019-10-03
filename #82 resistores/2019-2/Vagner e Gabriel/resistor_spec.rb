require_relative 'resistor.rb'

require 'minitest/autorun'

describe Resistor do
    describe '#mostra o valor de cores dos resistores' do
            it 'retorna valor preto e marrom' do
            Resistor.new().resistor(['preto','marrom']).must_equal 01
            end
            it'retorna valor branco e violeta' do
            Resistor.new.resistor(['vermelho', 'branco']).must_equal 29
            end
            it'retorna valor cinza e vermelho' do
            Resistor.new.resistor(['violeta', 'branco']).must_equal 79
            end

    end
end
