require_relative '../../moeda'
describe 'Moeda' do
  include Moeda
  describe '#numero_para_moeda' do
    context 'usando valores padrões' do
      it "formata corretamente um inteiro" do
        expect(numero_para_moeda(2000)).to eq('R$2.000,00')
      end

      it "formata corretamente um float" do
        expect(numero_para_moeda(2000.00)).to eq('R$2.000,00')
      end

      it "formata corretamente uma string" do
        expect(numero_para_moeda('2000')).to eq('R$2.000,00')
      end

      it "usa delimitadores para números muito grandes" do
        expect(numero_para_moeda(2000000000)).to eq('R$2.000.000.000,00')
      end

      it "não tem delimitadores para números pequenos" do
        expect(numero_para_moeda(200)).to eq('R$200,00')
      end
    end

    context 'usando opções customizadas' do
      it 'permite a mudança da :unidade' do
        expect(numero_para_moeda(2000, unidade: '$')).to eq('$2.000,00')
      end

      it 'permite a mudança da :precisao' do
        expect(numero_para_moeda(2000, precisao: 1)).to eq('R$2.000,0')
      end

      it 'esconde o separador se a :precisao é 0' do
        expect(numero_para_moeda(2000, precisao: 0)).to eq('R$2.000')
      end

      it 'permite a mudança do :delimitador' do
        expect(numero_para_moeda(2000, delimitador: ',')).to eq('R$2,000,00')
      end

      it 'permite a mudança do :separador' do
        expect(numero_para_moeda(2000, separador: '.')).to eq('R$2.000.00')
      end

      it 'formata corretamente usando múltiplas opções' do
        expect(numero_para_moeda(2000, unidade: '$', precisao: 3,
                                       delimitador: ',', separador: '.'))
              .to eq('$2,000.000')
      end
    end
  end
end
