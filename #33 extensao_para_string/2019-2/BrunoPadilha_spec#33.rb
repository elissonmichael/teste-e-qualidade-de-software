require 'minitest/autorun'
require_relative '../extensao_string'

describe 'String' do

  describe "#titleize" do

    it "escreve com letra maiúscula cada palavra em uma string" do
      "bruno padilha".titleize.must_equal "Bruno Padilha"
    end


    it "funciona com strings de uma palavra" do
      "bruno".titleize.must_equal "Bruno"
    end

    it "escreve com letra maiúscula string toda em maiúsculo" do
      "BRUNO".titleize.must_equal "Bruno"
    end

    it "escreve com letra maiúscula strings com letras misturadas"do
      "BrUnO".titleize.must_equal "Bruno"
    end

  end

  describe '#blank?' do

    it "retorna true se a string é vazia" do
      "".must_be :blank? 
    end


    it "retorna true se a string contém apenas espaços" do
      " ".must_be :blank?
    end

    it "retorna true se a string contém apenas tabs" do
      # exemplo: "\t\t\t"
      "\t\t\t".must_be :blank?
    end

    it "retorna true se a string contém apenas espaços e tabs" do
      "\t \t \t".must_be :blank?
    end
    

    it "retorna false se a string contém uma letra" do
      "b".wont_be :blank?
    end

    it "retorna false se a string contém um número" do
      "1s".wont_be :blank?

    end

  end

end
