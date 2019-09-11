require 'minitest/autorun'
require_relative 'vagner_numero_primo'

describe Integer do
  describe '#primo?' do
    it 'retorna true quando um número é primo' do
      [2, 3, 5, 7, 11].each { |numero| numero.must_be :primo? }
    end

    it 'retorna false quando um número NÃO é primo' do
      [-1, 0, 1, 4, 6, 8, 9, 10].each { |numero| numero.wont_be :primo? }
    end
  end
end