require 'minitest/autorun'
require_relative '../../moeda'

describe 'Moeda' do
  include Moeda
  describe '#numero_para_moeda' do
    describe 'usando valores padrões' do
      it "formata corretamente um inteiro" do
        numero_para_moeda(2000).must_equal 'R$2.000,00'
      end

      it "formata corretamente um float" do
        numero_para_moeda(2000.00).must_equal 'R$2.000,00'
      end

      it "formata corretamente uma string" do
        numero_para_moeda('2000').must_equal 'R$2.000,00'
      end

      it "usa delimitadores para números muito grandes" do
        numero_para_moeda(2000000000).must_equal 'R$2.000.000.000,00'
      end

      it "não tem delimitadores para números pequenos" do
        numero_para_moeda(200).must_equal 'R$200,00'
      end
    end

    describe 'usando opções customizadas' do

      it 'permite a mudança da :unidade' do
        numero_para_moeda(2000, unidade: '$').must_equal '$2.000,00'
      end

      it 'permite a mudança da :precisao' do
        numero_para_moeda(2000, precisao: 1).must_equal 'R$2.000,0'
      end

      it 'esconde o separador se a :precisao é 0' do
        numero_para_moeda(2000, precisao: 0).must_equal 'R$2.000'
      end

      it 'permite a mudança do :delimitador' do
        numero_para_moeda(2000, delimitador: ',').must_equal 'R$2,000,00'
      end

      it 'permite a mudança do :separador' do
        numero_para_moeda(2000, separador: '.').must_equal 'R$2.000.00'
      end

      it 'formata corretamente usando múltiplas opções' do
        numero_para_moeda(2000, unidade: '$', precisao: 3,
                                delimitador: ',', separador: '.')
                         .must_equal '$2,000.000'
      end

    end

  end

end
