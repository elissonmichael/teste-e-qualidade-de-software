require 'minitest/autorun'
require_relative 'moeda.rb'

  describe 'Moeda' do
    include Moeda
      describe 'formatar numero para tipo moeda' do
        it '#formata corretamente um float' do
          numero_para_moeda(15.00).must_equal "R$15,00"
        end
        it '#separa numeros grandes' do
          numero_para_moeda(1000000000000).must_equal "R$1.000.000.000.000,00"
      end

      it '#formata uma string' do
        numero_para_moeda("100").must_equal "R$100,00"
      end
    end
  end
