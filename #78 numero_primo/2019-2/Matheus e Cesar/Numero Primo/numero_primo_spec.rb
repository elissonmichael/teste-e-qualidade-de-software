require 'minitest/autorun'
require_relative 'numeroprimo.rb'
describe Integer do
    describe  'Numeros Primos' do
        it 'testa se um numero é primo' do
            2.must_be :primo?
        end

        it 'testa varios numeros primos' do
            [2, 3, 5, 7, 11].each { |numero| numero.must_be :primo? }
        end

        it 'retorna false se não é primo' do
            [-1,0,1,9,10].each {|numero| numero.wont_be :primo?}
        end
        

    end


end