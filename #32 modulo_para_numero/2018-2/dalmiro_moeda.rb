require 'minitest/autorun'
require_relative '../Moeda'

describe 'Moeda' do

  include Moeda

  describe '#numero_para_moeda' do

    describe 'usando valores padrões' do

      it "formata corretamente um inteiro" do
        numero_para_moeda(2).must_equal "R$2,00"
      end

      it "formata corretamente um float" do
        numero_para_moeda(1.50).must_equal "R$1,50"
      end

      it "formata corretamente uma string" do
        numero_para_moeda('100').must_equal "R$100,00"
      end

      it "usa delimitadores para números muito grandes"do
        numero_para_moeda(1_000_000_000).must_equal "R$1.000.000.000,00"
      end

      it "não tem delimitadores para números pequenos"do
        numero_para_moeda(10).must_equal "R$10,00"
      end
    end

    describe 'usando opções customizadas'do

      it 'permite a mudança da :unidade'do
        numero_para_moeda(1, {unidade: "$"}).must_equal "$1,00"
      end

      it 'permite a mudança da :precisao'do
        numero_para_moeda(1, {precisao: 1}).must_equal "R$1,0"
      end

      it 'esconde o separador se a :precisao é 0'do
        numero_para_moeda(1, {precisao: 0}).must_equal "R$1"
      end

      it 'permite a mudança do :delimitador'do
        numero_para_moeda(100000, {delimitador: "*"}).must_equal "R$100*000,00"
      end

      it 'permite a mudança do :separador'do
        numero_para_moeda(100, {separador: "+"}).must_equal "R$100+00"
      end

      it 'formata corretamente usando múltiplas opções'do
      numero_para_moeda(1000, { unidade: '$', precisao: 1, separador: '+', delimitador: '-' }).must_equal "$1-000+0"
      end

    end

  end

end
