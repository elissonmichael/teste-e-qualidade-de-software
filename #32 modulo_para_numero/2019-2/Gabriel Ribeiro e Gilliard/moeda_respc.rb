require 'minitest/autorun'
require_relative 'moeda'

describe 'Moeda' do

  include Moeda

  describe '#numero_para_moeda' do

    describe 'usando valores padrões' do

      it "formata corretamente um inteiro" do
        numero_para_moeda(100).must_equal 'R$100,00'
      end

      it "formata corretamente um float" do
        numero_para_moeda(0.10).must_equal 'R$0,10'

      end

      it "formata corretamente uma string" do
        numero_para_moeda('100').must_equal "R$100,00"

      end

      it "usa delimitadores para números muito grandes" do
        numero_para_moeda(5000000000).must_equal "R$5.000.000.000,00"

      end

      it "não tem delimitadores para números pequenos" do
        numero_para_moeda(10).must_equal "R$10,00"
      end
    end

    describe 'usando opções customizadas' do

      it 'permite a mudança da :unidade' do
        numero_para_moeda(100, {unidade: 'US$'}).must_equal "US$100,00"

      end

      it 'permite a mudança da :precisao' do
        numero_para_moeda(100, {precisao: 1}).must_equal "R$100,0"
      end

      it 'esconde o separador se a :precisao é 0' do
        numero_para_moeda(10, {precisao: 0}).must_equal "R$10"
      end

      it 'permite a mudança do :delimitador' do
        numero_para_moeda(1000, {delimitador: ';'}).must_equal "R$1;000,00"
      end

      it 'permite a mudança do :separador' do
        numero_para_moeda(10, {separador: ';'}).must_equal "R$10;00"
      end

      it 'formata corretamente usando múltiplas opções' do
        opcoes = { separador: ';', delimitador: '|', unidade: 'US$' }
        numero_para_moeda(1000, opcoes).must_equal "US$1|000;00"

      end
    end
  end
end
