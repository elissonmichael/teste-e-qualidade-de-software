require 'minitest/autorun'
require_relative '../../moeda.rb'

describe 'Moeda' do

  include Moeda

  describe '#numero_para_moeda' do

    describe 'usando valores padrões' do

      it "formata corretamente um inteiro" do
        numero_para_moeda(265).must_equal "R$265,00"
      end

      it "formata corretamente um float" do 
        numero_para_moeda(17.50).must_equal "R$17,50"
      end

      it "formata corretamente uma string" do
        numero_para_moeda("845").must_equal "R$845,00"
      end

      it "usa delimitadores para números muito grandes" do
        numero_para_moeda(76554212).must_equal "R$76.554.212,00"
      end

      it "não tem delimitadores para números pequenos" do 
        numero_para_moeda(2). must_equal "R$2,00"
      end
    end

    describe 'usando opções customizadas' do

      it 'permite a mudança da :unidade' do 
        numero_para_moeda(256, :unidade => "Y$").must_equal "Y$256,00"
      end

      it 'permite a mudança da :precisao' do
        numero_para_moeda(2987, :precisao => 3).must_equal "R$2.987,000"
      end

      it 'esconde o separador se a :precisao é 0' do 
        numero_para_moeda(987, :precisao => 0).must_equal "R$987"
      end 

      it 'permite a mudança do :delimitador' do 
        numero_para_moeda(58761, :delimitador => "'").must_equal "R$58'761,00"
      end 

      it 'permite a mudança do :separador' do 
        numero_para_moeda(58761, :separador => "'").must_equal "R$58.761'00"
      end 

      it 'formata corretamente usando múltiplas opções' do 
        numero_para_moeda(58761, :separador => "'", :delimitador => "#", :unidade => 'RU$').must_equal "RU$58#761'00"
      end

    end

  end

end
