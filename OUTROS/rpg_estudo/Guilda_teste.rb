require 'minitest/autorun'
require_relative 'Guilda'
require_relative 'Personagem'

class Guilda_teste < Minitest::Test
    describe :adicionar_personagem do
        def setup
        @havok = Guilda.new
        @personagem = Personagem.new("Ze","Ladino",5, 10)
        end
        it "Deve adicionar um personagem a guilda" do
            @havok.adicionar_personagem(@personagem)
            @havok.personagens.must_equal [@personagem]
        end
        it "Verifica quantidade de membros" do
            @havok.adicionar_personagem(@personagem)
            @havok.total_de_personagens.must_equal 1
        end
        it "Não permitir personagem duplicado" do
            @havok.adicionar_personagem(@personagem)
            @havok.adicionar_personagem(@personagem)
            @havok.total_de_personagens.must_equal 1
        end
    end
    describe :remover_personagem do
        def setup
            @havok = Guilda.new
            @personagem = Personagem.new("Ze","Ladino",5, 10)
        end
        it "Remove um personagem da guilda" do
            @havok.remover_personagem(@personagem)
            @havok.personagens.select{|p|p.nome == personagem.nome}.empty?.must_equal true
        end
        it "Deve retornar erro ao remover personagem que não está na guilda" do
            @havok.remover_personagem(@personagem).must_be_nil
        end
    end
    describe :forca_total do
        def setup
            @havok = Guilda.new
            @personagem = Personagem.new("Ze","Ladino",5, 10)
            @personagem_2 = Personagem.new("Rob","Mago",2, 5)
            @havok.adicionar_personagem(@personagem)
            @havok.adicionar_personagem(@personagem_2)
        end
        it "Verifica força total da guilda" do
            @havok.forca_total.must_equal 7
        end
    end
    describe :vida_total do
        def setup
            @havok = Guilda.new
            @personagem = Personagem.new("Ze","Ladino",5, 10)
            @personagem_2 = Personagem.new("Rob","Mago",2, 5)
            @havok.adicionar_personagem(@personagem)
            @havok.adicionar_personagem(@personagem_2)
        end
        it "Verifica vida total da guilda" do
            @havok.vida_total.must_equal 15
        end
    end
    describe :remover_aleatorio do
        def setup
            @personagem = Personagem.new("Ze","Ladino",5, 10)
            @personagem_2 = Personagem.new("Rob","Mago",50, 85)
            @personagem_3 = Personagem.new("Steve","Guerreiro",90, 150)
            @personagem_4 = Personagem.new("Dan","Bardo",0, 80)
            @havok = Guilda.new
            @havok.adicionar_personagem(@personagem_2)
            @havok.adicionar_personagem(@personagem_3)
            @havok.adicionar_personagem(@personagem_4)
        end
        it "Deve remover um personagem aleatório da guilda" do
            @personagem.assassinar(@havok)
            @havok.total_de_personagens.must_equal 2
        end
    end
end