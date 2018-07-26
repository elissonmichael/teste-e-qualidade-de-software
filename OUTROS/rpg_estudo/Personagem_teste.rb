require 'minitest/autorun'
require_relative 'Personagem'
require_relative 'Guilda'
class Personagem_teste < Minitest::Test
    describe :ataque_basico do
        def setup
            @personagem = Personagem.new("Ze","Ladino",5, 10)
        end
        it 'Mostrar dano causado pelo ataque básico' do
            @personagem.ataque_basico.must_equal 5
        end
    end
    describe :batalha do
        def setup
            @personagem = Personagem.new("Ze","Ladino",5, 10)
            @personagem_2 = Personagem.new("Rob","Mago",2, 5)
        end
        it 'Deve tirar vida do personagem que receber um ataque' do
            @personagem.atacar(@personagem_2)
            @personagem_2.vida.must_equal 0
        end
        it 'Verificar status após dano letal' do
            @personagem_2.perde_vida(5)
            @personagem_2.vivo.must_equal false
        end
    end
end