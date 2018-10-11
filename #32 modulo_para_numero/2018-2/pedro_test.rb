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
        numero_para_moeda(1.35).must_equal "R$1,35"
      end

      it "formata corretamente uma string" do
        numero_para_moeda('123').must_equal "R$123,00"
      end

      it "usa delimitadores para números muito grandes" do
        numero_para_moeda(1_000_000_000).must_equal "R$1.000.000.000,00"
      end

      it "não tem delimitadores para números pequenos" do
        numero_para_moeda(10).must_equal "R$10,00"
      end
    end

    describe 'usando opções customizadas' do

      it 'permite a mudança da :unidade' do
        numero_para_moeda(10, {unidade: '$'}).must_equal "$10,00"
      end

      it 'permite a mudança da :precisao' do
        numero_para_moeda(10, {precisao: 1}).must_equal "R$10,0"
      end

      it 'esconde o separador se a :precisao é 0' do
        numero_para_moeda(10, {precisao: 0}).must_equal "R$10"
      end

      it 'permite a mudança do :delimitador' do
        numero_para_moeda(1000000, {delimitador: ';'}).must_equal "R$1;000;000,00"
      end

      it 'permite a mudança do :separador' do
        numero_para_moeda(10, {separador: ';'}).must_equal "R$10;00"
      end

      it 'formata corretamente usando múltiplas opções' do
        opcoes = { separador: ';', delimitador: '|', precisao: 2, unidade: '$' }
        numero_para_moeda(10, opcoes).must_equal "$10;00"
      end
    end
  end
end
