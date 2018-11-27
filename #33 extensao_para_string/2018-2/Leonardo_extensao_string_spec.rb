require 'minitest/autorun'
require_relative '../extensao_string'

describe 'String' do

  describe "#titleize" do

    it "escreve com letra maiúscula cada palavra em uma string" do
      'iti malia'.titleize.must_equal "Iti Malia"
    end

    it "funciona com strings de uma palavra" do
      'iti'.titleize.must_equal "Iti"
    end

    it "escreve com letra maiúscula string toda em maiúsculo" do
      'Iti Malia'.titleize.must_equal "Iti Malia"
    end

    it "escreve com letra maiúscula strings com letras misturadas" do
      'ItI mAlIA'.titleize.must_equal "Iti Malia"
    end

  end

  describe '#blank?' do

    it "retorna true se a string é vazia" do
      ''.blank?.must_equal true
    end

    it "retorna true se a string contém apenas espaços" do
      ' '.blank?.must_equal true
    end

    it "retorna true se a string contém apenas tabs" do
      # exemplo: "\t\t\t"
      "\t\t\t".blank?.must_equal true
    end

    it "retorna true se a string contém apenas espaços e tabs" do
      " \t \t \t".blank?.must_equal true
    end

    it "retorna false se a string contém uma letra" do
      "A".blank?.must_equal false
    end

    it "retorna false se a string contém um número" do
      "42".blank?.must_equal false
    end

  end

end
