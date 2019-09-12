require_relative 'moeda'
describe 'Moeda' do

  include Moeda

  describe '#numero_para_moeda' do
      describe 'usando valores padrões' do

        it "formata corretamente um inteiro" do
          numero_para_moeda(1).must_equal "R$1,00"
        end

        it "formata corretamente um float" do
          numero_para_moeda(5.00).must_equal"R$5,00"
        end

        it "formata corretamente uma string" do
          numero_para_moeda('1000').must_equal"R$1000,00"
        end

        it "usa delimitadores para números muito grandes" do
          numero_para_moeda(9_876_543).must_equal "R$9.876.543,00"
        end

        it "não tem delimitadores para números pequenos" do
          numero_para_moeda(10).must_equal "R$10,00"
        end

      end

      describe 'usando opções customizadas' do
        it 'permite a mudança da :unidade' do
          numero_para_moeda( 9, {unidade: "R$"} ).must_equal "R$9,00"
        end

        it 'permite a mudança da :precisao' do
          numero_para_moeda(10, {precisao: 1}).must_equal "R$50,0"
        end

        it 'esconde o separador se a :precisao é 0' do
          numero_para_moeda(50, {precisao: 0}).must_equal "R$50"
        end

        it 'permite a mudança do :delimitador' do
          numero_para_moeda(50, {delimitador: "."}).must_equal "R$50,00"
        end

        it 'permite a mudança do :separador' do
          numero_para_moeda(50, {separador: ";"}).must_equal "R$50;00"
        end

        it 'formata corretamente usando múltiplas opções' do
          opcoes = {unidade: '$', precisao: 1, delimitador: '|', separador:';' }
          numero_para_moeda(50, opcoes).must_equal "$50;0"
        end

      end

    end

  end
