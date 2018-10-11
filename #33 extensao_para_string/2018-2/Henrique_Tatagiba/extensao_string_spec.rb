require 'minitest/autorun'
require_relative '../../extensao_string.rb'

describe 'String' do
  describe '#titleize' do
    it 'escreve com letra maiúscula cada palavra em uma string' do
      'hello world'.titleize.must_equal 'Hello World'
    end

    it 'funciona com strings de uma palavra' do
      'hello'.titleize.must_equal 'Hello'
    end

    it 'escreve com letra maiúscula string toda em maiúsculo' do
      'HELLO WORLD'.titleize.must_equal 'Hello World'
    end

    it 'escreve com letra maiúscula strings com letras misturadas' do
      'HeLlO WoRLD'.titleize.must_equal 'Hello World'
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
      'h'.blank?.must_equal false
    end

    it 'retorna false se a string contém um número' do
      '1'.blank?.must_equal false
    end
  end
end
