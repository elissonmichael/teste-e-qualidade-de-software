require 'minitest/autorun'
require_relative 'mikhael_extensao_string'

describe 'String' do

  describe '#titleize' do

    it "escreve com letra maiúscula cada palavra em uma string" do
      "mikhael".titleize.must_equal "Mikhael"
      "mikhael ribeiro".titleize.must_equal "Mikhael Ribeiro"
    end

    it "funciona com strings de uma palavra" do
      "mikhael".titleize.must_equal "Mikhael"
      "mIKHAEL".titleize.must_equal "Mikhael"
    end

    it "escreve com letra maiúscula string toda em maiúsculo" do
      "MIKHAEL".titleize.must_equal "MIKHAEL"
    end

    it "escreve com letra maiúscula strings com letras misturadas" do
      "MiKhAeL".titleize.must_equal "MIKHAEL"
    end
  end

  describe '#blank?' do

    it "retorna true se a string é vazia" do
      "".blank?.must_equal true
    end

    it "retorna true se a string contém apenas espaços" do
      " ".blank?.must_equal true
    end

    it "retorna true se a string contém apenas tabs" do
      "\t\t".blank?.must_equal true
    end
    it "retorna true se a string contém apenas espaços e tabs" do
      "\t \t \t".blank?.must_equal true
    end
    it "retorna false se a string contém uma letra" do
      "m".blank?.must_equal false
    end
    it "retorna false se a string contém um número" do
      "1".blank?.must_equal false
    end
  end
end