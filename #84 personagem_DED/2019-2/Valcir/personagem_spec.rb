require 'minitest/autorun'
require_relative 'personagem.rb'

describe Personagem do

    describe 'Testa o limite do range' do
            it 'testa o range de dex' do
         
            (3..18).must_include Personagem.new("Valcir").destreza
            end

           it 'range de forca' do
                (3..18).must_include Personagem.new("João").forca
           end

           it 'range de inteligencia' do
                (3..18).must_include Personagem.new("Pedro").inteligencia
            end

            it 'range de carisma' do
                (3..18).must_include Personagem.new("Tiago").carisma
            end

           it 'verifica se o "dado" da sabedoria está dentro do limite maximo possivel de 18' do
                (3..18).must_include Personagem.new("Miguel").sabedoria
            end
            
            it 'verifica se o "dado" da sabedoria está dentro do limite maximo possivel de 18' do
                (3..18).must_include Personagem.new("Jorge").sabedoria
            end

            it 'verifica a constituição' do
                (3..18).must_include personagem.new("João").constituição
            end


       
    end



end