require 'minitest/autorun'
require_relative 'aviao.rb'

describe Aviao do
  describe '#altitude_de_cruzeiro' do
    it 'retorna altitude de Concorde' do
      Aviao.new('Concorde').altitude_de_cruzeiro.must_equal 750
    end

    it 'retorna altitude de Airbus' do
      Aviao.new('Airbus').altitude_de_cruzeiro.must_equal 1000
    end

    it 'retorna altitude de Boeing' do
      Aviao.new('Boeing').altitude_de_cruzeiro.must_equal 500
    end
  end
end
