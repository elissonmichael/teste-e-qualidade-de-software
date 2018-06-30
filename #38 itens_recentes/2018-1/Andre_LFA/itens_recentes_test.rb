require 'minitest/autorun'
require_relative 'itens_recentes.rb'

describe Lista do 
    attr_reader :lista
    def setup
        @lista = Lista.new
    end 

    it "Adiciona um item a lista" do 
        lista.adiciona(2)
        lista.itens.must_equal [2]
    end 

    it "não cria duplicações" do 
        lista.adiciona(2)
        lista.adiciona(2)
        lista.itens.must_equal [2]
    end 

    it "o item mais recente vira o primeiro da lista" do
         lista.adiciona(2)
         lista.adiciona("texto")
         lista.adiciona(50.0)
         lista.itens.must_equal [50.0, "texto", 2] 
    end 

    it "adiciona o mesmo item para o topo da lista" do 
        lista.adiciona("texto")
        lista.adiciona(2)
        lista.adiciona(50.0)
        lista.adiciona(2)
        lista.itens.must_equal [2, 50.0, "texto"] 
    end 
end 

