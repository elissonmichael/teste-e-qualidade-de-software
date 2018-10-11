require 'minitest/autorun'
require_relative 'mikhael_extensao_string'

describe 'String' do

  describe "#titleize" do

    # it "escreve com letra maiúscula cada palavra em uma string" do
    #   "mikhael".titleize.must_equal "Mikhael"
    #   "mikhael ribeiro".titleize.must_equal "Mikhael Ribeiro"
    # end

    it "funciona com strings de uma palavra" do
      ("s"+"f").titleize.must_equal "SF"
    end

    # it "escreve com letra maiúscula string toda em maiúsculo" do
    #   "MIKHAEL".titleize.must_equal "MIKHAEL"
    # end

    # it "escreve com letra maiúscula strings com letras misturadas"

  end

  # describe '#blank?' do
  #
  #   it "retorna true se a string é vazia"
  #
  #   it "retorna true se a string contém apenas espaços"
  #
  #   it "retorna true se a string contém apenas tabs"
  #   # exemplo: "\t\t\t"
  #
  #   it "retorna true se a string contém apenas espaços e tabs"
  #
  #   it "retorna false se a string contém uma letra"
  #
  #   it "retorna false se a string contém um número"
  #
  # end
end