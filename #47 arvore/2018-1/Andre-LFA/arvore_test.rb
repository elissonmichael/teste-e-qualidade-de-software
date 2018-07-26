require 'minitest/autorun'
require_relative 'arvore.rb' 

describe Arvore do
    attr_reader :arvore1
    def setup 
        @arvore1 = Arvore.new 
    end 

    it 'passar_um_ano' do 
        @arvore1.passar_um_ano
        @arvore1.idade.must_equal 1
    end 

    it 'verifica se a arvore esta viva' do 
        @arvore1.viva?.must_equal true  
    end 

    it 'verifica se produz frutas antes da idade' do 
        @arvore1.passar_um_ano
        @arvore1.frutas.must_equal 0 
    end 

    it 'verifica se produz frutas depois de morta(5 anos)' do 
        7.times do 
            @arvore1.passar_um_ano
        end 
        @arvore1.frutas.must_equal 0  
    end 

    it 'pegar uma fruta' do
        4.times do 
            @arvore1.passar_um_ano
        end 
        @arvore1.pegar_uma_fruta
        @arvore1.frutas.must_equal 9  
    end 

end 