require 'minitest/autorun'
require_relative '../2018-2/mikhael_moeda'

describe 'MikhaelMoeda' do

  include MikhaelMoeda

  describe '#numero_para_moeda' do

    describe 'usando valores padrões' do

      it "formata corretamente um inteiro" do
        numero_para_moeda(200).must_equal "R$200,00"
        numero_para_moeda(1051).must_equal "R$1051,00"
      end

      it "formata corretamente um float" do
        numero_para_moeda(23.02).must_equal "R$23,02"
        numero_para_moeda(0.5).must_equal "R$0,50"
        numero_para_moeda(1050.23).must_equal "R$1050,23"
      end

      it "formata corretamente uma string" do
        numero_para_moeda('2035').must_equal "R$2035,00"
        numero_para_moeda('2035.5').must_equal "R$2035,50"
      end

      it "usa delimitadores para números muito grandes" do
        numero_para_moeda(3_000_050_000).must_equal "R$3.000.050.000,00"
        numero_para_moeda(3_000_050_000.5).must_equal "R$3.000.050.000,50"
        numero_para_moeda(32_100_050_700).must_equal "R$32.100.050.700,00"
      end

      it "não tem delimitadores para números pequenos" do
        numero_para_moeda(5).must_equal "R$5,00"
      end
    end

    describe 'usando opções customizadas' do

      it 'permite a mudança da :unidade' do
        numero_para_moeda(25.5, {unidade: '$'}).must_equal "$25,50"
        numero_para_moeda(64, {unidade: '&'}).must_equal "&64,00"
      end

      it 'permite a mudança da :precisao' do
        numero_para_moeda(5, {precisao: 1}).must_equal "R$5,0"
        numero_para_moeda(123, {precisao: 1}).must_equal "R$123,0"
        numero_para_moeda(50.2, {precisao: 1}).must_equal "R$50,2"
        numero_para_moeda(50.25, {precisao: 1}).must_equal "R$50,2"
        numero_para_moeda(50.02, {precisao: 1}).must_equal "R$50,0"
      end

      it 'esconde o separador se a :precisao é 0' do
        numero_para_moeda(25, {precisao: 0}).must_equal "R$25"
        numero_para_moeda(25.5, {precisao: 0}).must_equal "R$25"
        numero_para_moeda(23225.5, {precisao: 0}).must_equal "R$23.225"
      end

      it 'permite a mudança do :delimitador' do
        numero_para_moeda(1000000, {delimitador: ';'}).must_equal "R$1;000;000,00"
        numero_para_moeda(5050000, {delimitador: '%'}).must_equal "R$5%050%000,00"
      end

      it 'permite a mudança do :separador' do
        numero_para_moeda(10, {separador: ';'}).must_equal "R$10;00"
        numero_para_moeda(10.35, {separador: '*'}).must_equal "R$10*35"
      end

      it 'formata corretamente usando múltiplas opções' do
        opcoes = { separador: ';', delimitador: '|', precisao: 2, unidade: '$' }
        numero_para_moeda(10, opcoes).must_equal "$10;00"

        opcoes2 = { separador: '#', delimitador: 'æ', precisao: 1, unidade: '&' }
        numero_para_moeda(23, opcoes2).must_equal "&23#0"

        opcoes3 = { separador: ';', delimitador: '|', precisao: 0, unidade: 'R$' }
        numero_para_moeda(10050.23, opcoes3).must_equal "R$10|050"
      end
    end
  end
end
