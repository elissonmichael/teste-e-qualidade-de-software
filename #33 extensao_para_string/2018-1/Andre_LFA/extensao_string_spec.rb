require_relative '../../extensao_string.rb'
require 'minitest/autorun'

describe 'String' do

    describe "#titleize" do
  
      it "escreve com letra maiúscula cada palavra em uma string" do
        "string de teste".titleize.must_equal "String De Teste"
      end 

      it "funciona com strings de uma palavra" do
        "string".titleize.must_equal "String"
      end 

      it "escreve com letra maiúscula string toda em maiúsculo" do 
        "STRING DE TESTE".titleize.must_equal "String De Teste"
      end 

      it "escreve com letra maiúscula strings com letras misturadas" do
        "StRINg dE tEsTe".titleize.must_equal "String De Teste"
      end 
    end
  
    describe '#blank?' do
  
      it "retorna true se a string é vazia" do 
        "".blank?.must_equal true
      end

      it "retorna true se a string contém apenas espaços" do 
        "            ".blank?.must_equal true
      end

      it "retorna true se a string contém apenas tabs" do 
      # exemplo: "\t\t\t"
      "\t\t\t".blank?.must_equal true
      end 

      it "retorna true se a string contém apenas espaços e tabs" do 
        "      \t\t\t\t       \t \t       \t".blank?.must_equal true 
      end 

      it "retorna false se a string contém uma letra" do 
        "s".blank?.must_equal false
      end

      it "retorna false se a string contém um número" do 
        "string2".blank?.must_equal false
      end 
    end
  
end
  