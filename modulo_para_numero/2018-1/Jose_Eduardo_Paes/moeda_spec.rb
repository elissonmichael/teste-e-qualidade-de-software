require 'minitest/autorun'
require_relative '../../moeda'

describe 'Moeda' do

  include Moeda

  describe '#numero_para_moeda' do

    context 'usando valores padrões' do

      it "formata corretamente um inteiro" do
        expect(numero_para_moeda(200)).to eq("R$200,00")
      end

      it "formata corretamente um float" do
        expect(numero_para_moeda(10.00)).to eq("R$10,00")
      end

      it "formata corretamente uma string" do
        expect(numero_para_moeda("20")).to eq("R$20,00")
      end

      it "usa delimitadores para números muito grandes" do
        expect(numero_para_moeda(300000)).to eq("R$300.000,00")
      end

      it "não tem delimitadores para números pequenos" do
        expect(numero_para_moeda(5)).to eq("R$5,00")
      end
    end

    context 'usando opções customizadas' do

      it 'permite a mudança da :unidade' do
        expect(numero_para_moeda(5,:unidade => "U$")).to eq("U$5,00")
      end

      it 'permite a mudança da :precisao' do
        expect(numero_para_moeda(5, precisao: 1)).to eq("R$5,0")
      end

      it 'esconde o separador se a :precisao é 0' do
        expect(numero_para_moeda(1, precisao: 0 )).to eq("R$1")
      end

      it 'permite a mudança do :delimitador' do
        expect(numero_para_moeda(10000, delimitador: ",")).to eq("R$10,000,00")
      end

      it 'permite a mudança do :separador' do
        expect(numero_para_moeda(20, separador: ".")).to eq("R$20.00")
      end

      it 'formata corretamente usando múltiplas opções' do
        expect(numero_para_moeda(10000, unidade: "U$", delimitador: ",", separador: ".")).to eq("U$10,000.00")
      end

    end

  end

end
