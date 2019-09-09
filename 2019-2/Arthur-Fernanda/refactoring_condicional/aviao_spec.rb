class Aviao
  def initialize(tipo)
    @tipo = tipo
  end

  def altitude_de_cruzeiro
    case @tipo
    when 'Concorde'
      altitude_maxima - contagem_de_passageiros
    when 'Airbus'
      altitude_maxima
    when 'Boeing'
      altitude_maxima - consumo_de_combustivel
    end
  end

  def altitude_maxima
    1000
  end

  def consumo_de_combustivel
    500
  end

  def contagem_de_passageiros
    250
  end
end

require 'minitest/autorun'

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
