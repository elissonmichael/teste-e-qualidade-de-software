require 'minitest/autorun'
require_relative '../moeda'

describe 'Moeda' do

  include Moeda

  describe '#numero_para_moeda' do

    describe 'usando valores padrões' do

      it "formata corretamente um inteiro" do
        numero_para_moeda(5).must_equal "R$5,00"
      end

      it "formata corretamente um float" do
        numero_para_moeda(5.5).must_equal "R$5,50"
      end

      it "formata corretamente uma string" do
        numero_para_moeda(5).must_equal "R$5,00"
      end

      it "usa delimitadores para números muito grandes" do
        numero_para_moeda(555_555_555).must_equal "R$555.555.555,00"
      end

      it "não tem delimitadores para números pequenos" do
        numero_para_moeda(0.05).must_equal "R$0,05"
      end
    end

    describe 'usando opções customizadas' do

      it 'permite a mudança da :unidade' do
        numero_para_moeda(5,{unidade: 'USD'}).must_equal "USD5,00"
      end

      it 'permite a mudança da :precisao' do
        numero_para_moeda(5,{precisao: 1}).must_equal "R$5,0"
      end

      it 'esconde o separador se a :precisao é 0' do
        numero_para_moeda(5,{precisao: 0}).must_equal "R$5"
      end

      it 'permite a mudança do :delimitador' do
        numero_para_moeda(50000,{delimitador: '@'}).must_equal "R$50@000,00"
      end

      it 'permite a mudança do :separador' do
        numero_para_moeda(5,{separador: '_'}).must_equal "R$5_00"
      end

      it 'formata corretamente usando múltiplas opções' do
        numero_para_moeda(50000, {separador: '_', delimitador: '@', precisao: 2, unidade: 'USD'}).must_equal "USD50@000_00"
      end

    end

  end

end
