require 'minitest/autorun'
require_relative 'resistor'

describe Resistor do

  describe 'usando valores padrões' do
      resistor = Resistor.new

      it "retorna valor 10 se fios marrom e preto" do
        resistor.valor("marrom", "preto").must_equal 10
      end

      it "retorna valor 68 se fios azul e cinza" do

      end

      it "retorna valor 47 se fios amarelo e violeta" do

      end

      it "retorna valor 68 se fios laranja e laranja" do

      end

  end

end
