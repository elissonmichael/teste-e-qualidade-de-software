require 'minitest/autorun'
require_relative 'extensao_string'

describe 'String' do

  describe "#titleize" do

    it "escreve com letra maiúscula cada palavra em uma string"

    it "funciona com strings de uma palavra"

    it "escreve com letra maiúscula string toda em maiúsculo"

    it "escreve com letra maiúscula strings com letras misturadas"

  end

  describe '#blank?' do

    it "retorna true se a string é vazia"

    it "retorna true se a string contém apenas espaços"

    it "retorna true se a string contém apenas tabs"
    # exemplo: "\t\t\t"

    it "retorna true se a string contém apenas espaços e tabs"

    it "retorna false se a string contém uma letra"

    it "retorna false se a string contém um número"

  end

end
