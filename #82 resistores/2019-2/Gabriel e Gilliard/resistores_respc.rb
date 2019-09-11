require 'minitest/autorun'
require_relative 'resistores'

describe 'Resistores' do
  describe 'teste_retorna_numero_das_cores' do
    it 'marrom_preto' do
      Resistores.valor(["marrom", "preto"]).must_equal(10)
    end
    it 'vermelho_laranja' do
      Resistores.valor(["vermelho", "laranja"]).must_equal(23)
    end
    it 'amarelo_verde' do
      Resistores.valor(["amarelo", "verde"]).must_equal(45)
    end
    it 'azul_violeta' do
      Resistores.valor(["azul", "violeta"]).must_equal(67)
    end
    it 'cinza_branco' do
      Resistores.valor(["cinza", "branco"]).must_equal(89)
    end

    end
  end
