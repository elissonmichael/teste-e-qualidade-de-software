require 'minitest/autorun'
require_relative '../extensao_string.rb'

describe 'String' do
  describe '#titleize' do
    it 'escreve com letra maiúscula cada palavra em uma string' do
      'muito teste'.titleize.must_equal 'Muito Teste'
    end

    it 'funciona com strings de uma palavra' do
      'teste'.titleize.must_equal 'Teste'
    end

    it 'escreve com letra maiúscula string toda em maiúsculo' do
      'MUITO TESTE'.titleize.must_equal 'Muito Teste'
    end

    it 'escreve com letra maiúscula strings com letras misturadas' do
      'MuiTO TeSTe'.titleize.must_equal 'Muito Teste'
    end
  end

  describe '#blank?' do
    it 'retorna true se a string é vazia' do
      ''.blank?.must_equal true
    end

    it 'retorna true se a string contém apenas espaços' do
      '   '.blank?.must_equal true
    end

    it 'retorna true se a string contém apenas tabs' do
      # exemplo: '\t\t\t'
      "\t\t\t".blank?.must_equal true
    end

    it 'retorna true se a string contém apenas espaços e tabs' do
      "  \t  \t ".blank?.must_equal true
    end

    it 'retorna false se a string contém uma letra' do
      't'.blank?.must_equal false
    end

    it 'retorna false se a string contém um número' do
      '9'.blank?.must_equal false
    end
  end
end
