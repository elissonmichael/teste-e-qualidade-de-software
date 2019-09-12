require 'minitest/autorun'
require_relative '../moeda'

describe 'Moeda' do

  include Moeda

  describe '#numero_para_moeda' do

    describe 'usando valores padrões' do

      it "formata corretamente um inteiro" do
        numero_para_moeda(1).must_equal "R$1,00"
      end

      it "formata corretamente um float" do
        numero_para_moeda(1.2).must_equal "R$1,20"
      end

      it "formata corretamente uma string" do
        numero_para_moeda("1").must_equal "R$1,00"
      end

      it "usa delimitadores para números muito grandes" do
        numero_para_moeda(666_666).must_equal "R$666.666,00"
      end

      it "não tem delimitadores para números pequenos" do
        numero_para_moeda(0.01).must_equal "R$0,01"
      end
    end

    describe 'usando opções customizadas' do

      it 'permite a mudança da :unidade' do
        numero_para_moeda(1, unidade: 'CAD').must_equal "CAD1,00"
      end

      it 'permite a mudança da :precisao' do
        numero_para_moeda(1, precisao: 1).must_equal "R$1,0"
      end

      it 'esconde o separador se a :precisao é 0' do
        numero_para_moeda(1, precisao: 0).must_equal "R$1"
      end

      it 'permite a mudança do :delimitador' do
        numero_para_moeda(1000,{delimitador: '*'}).must_equal "R$1*000,00"
      end

      it 'permite a mudança do :separador' do
        numero_para_moeda(1,{separador: '_'}).must_equal "R$1_00"
      end

      it 'formata corretamente usando múltiplas opções' do
        numero_para_moeda(1000, {separador: '-', delimitador: '*', precisao: 2, unidade: 'CAD'}).must_equal "CAD1*000-00"
      end

    end

  end

end
