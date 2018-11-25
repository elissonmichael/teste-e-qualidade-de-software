require 'minitest/autorun'
require_relative '../extensao_string'

describe 'String' do

  describe "#titleize" do

    it "escreve com letra maiúscula cada palavra em uma string" do
      'teste legal'.titleize.must_equal "Teste Legal"
    end

    it "funciona com strings de uma palavra" do
      'teste'.titleize.must_equal "Teste"
    end

    it "escreve com letra maiúscula string toda em maiúsculo" do
      'TESTE TESTE'.titleize.must_equal "Teste Teste"
    end

    it "escreve com letra maiúscula strings com letras misturadas" do
      'TeStE'.titleize.must_equal "Teste"
    end

  end

  describe '#blank?' do

    it "retorna true se a string é vazia" do
      ''.blank?.must_equal true
    end

    it "retorna true se a string contém apenas espaços" do
      '  '.blank?.must_equal true
    end

    it "retorna true se a string contém apenas tabs" do
      "\t\t".blank?.must_equal true
    end

    it "retorna true se a string contém apenas espaços e tabs" do
      "\t \t \t".blank?.must_equal true
    end

    it "retorna false se a string contém uma letra" do
      'x'.blank?.must_equal false
    end

    it "retorna false se a string contém um número" do
      '1'.blank?.must_equal false
    end

  end

end
