require 'minitest/autorun'
require_relative 'aviao.rb'
require_relative 'boeing.rb'
require_relative 'concorde.rb'
require_relative 'airbus.rb'

describe Aviao do
    describe '#testa_altitude_cruzeiro' do

        it 'retorna altitude do Concorde' do
            Concorde.new().altitude_de_cruzeiro.must_equal 750
        end


        it 'retorna altitude de Airbus' do
            Airbus.new().altitude_de_cruzeiro.must_equal 1000
        end
      
          it 'retorna altitude de Boeing' do
           Boeing.new().altitude_de_cruzeiro.must_equal 500
          end

    end

end