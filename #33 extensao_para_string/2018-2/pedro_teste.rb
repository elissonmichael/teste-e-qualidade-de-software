require 'minitest/autorun'
require_relative '../extensao_string.rb'

describe 'String' do

  describe '#titleize' do

    it 'escreve com letra maiúscula cada palavra em uma string' do
      'oi pedro'.titleize.must_equal 'Oi Pedro'
    end

    it 'funciona com strings de uma palavra' do
      'oi'.titleize.must_equal 'Oi'
    end

    it 'escreve com letra maiúscula string toda em maiúsculo' do
      'OI PEDRO'.titleize.must_equal 'Oi Pedro'
    end

    it 'escreve com letra maiúscula strings com letras misturadas' do
      'oI pEDrO'.titleize.must_equal 'Oi Pedro'
    end
  end

  describe '#blank?' do
    it 'retorna true se a string é vazia' do
      ' '.blank?.must_equal true
    end

    it 'retorna true se a string contém apenas espaços' do
      ' '.blank?.must_equal true
    end

    it 'retorna true se a string contém apenas tabs' do
      # exemplo: '\t\t\t'
      "\t\t".blank?.must_equal true
    end

    it 'retorna true se a string contém apenas espaços e tabs' do
      "  \t  ".blank?.must_equal true
    end

    it 'retorna false se a string contém uma letra' do
      'a'.blank?.must_equal false
    end

    it 'retorna false se a string contém um número' do
      '0'.blank?.must_equal false
    end
  end
end
