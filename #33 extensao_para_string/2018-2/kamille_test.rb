require 'minitest/autorun'
require_relative '../extensao_string'

describe 'String' do

    describe "#titleize" do
  
      it "escreve com letra maiúscula cada palavra em uma string" do
      'sistemas'.titleize.must_equal 'Sistemas'
      end
  
      it "funciona com strings de uma palavra" do
        'gol'.titleize.must_equal 'Gol'
      end
  
      it "escreve com letra maiúscula string toda em maiúsculo" do
        'SISTEMAS'.titleize.must_equal 'Sistemas'
      end
  
      it "escreve com letra maiúscula strings com letras misturadas" do
        'SiStEmAs'.titleize.must_equal 'Sistemas'
      end
  
    end
  
    describe '#blank?' do
  
      it "retorna true se a string é vazia" do

        '' .blank?.must_equal true
      end
  
      it "retorna true se a string contém apenas espaços" do
         
        ' ' .blank?.must_equal true
      end
  
      it "retorna true se a string contém apenas tabs" do
      # exemplo: "\t\t\t"

      "\t\t\t" .blank?.must_equal true

      end

      it "retorna true se a string contém apenas espaços e tabs" do
      
        "\t \t \t" .blank?.must_equal true

      end
  
      it "retorna false se a string contém uma letra" do

        "K" .blank?.must_equal false

      end
  
      it "retorna false se a string contém um número" do

        "3" .blank?.must_equal false

      end
  
    end
  
  end
  