class Personagem
    attr_reader :vida, :forca, :destreza, :inteligencia, :sabedoria, :carisma
    def initialize
        @forca = rolarDados
        @destreza = rolarDados
        @constituicao = rolarDados
        @inteligencia = rolarDados
        @sabedoria = rolarDados
        @carisma = rolarDados
        @vida = 10
    end

    def rolarDados
        dado = Array.new(4) { rand(1..6) }.sort
        dado.pop

        @result = 0
        dado.each do |i|
            @result = @result + i
         end

        @result
    end

    def modificador(valor)
        (valor - 10) / 2
    end 

    def vida(valorDoModificador)
        hp = @vida += valorDoModificador
    end

end

require 'minitest/autorun'
  
describe Personagem do
  describe '#teste em habilidades' do
    personagem = Personagem.new

    it 'teste de modificador par' do
        personagem.modificador(12).must_equal 1
    end

    it 'teste de modificador impar' do
        personagem.modificador(11).must_equal 0
    end

    it 'teste de habilidade retornando modificador negativo' do
        personagem.modificador(3).must_equal -4
    end

    it 'verifica se valor da força está limitado até 18' do
        # personagem.rolarDados.must_include 3...18
    end

    it 'verifica vida' do
        modificador = personagem.modificador(14)
        personagem.vida(modificador).must_equal 12
    end

  end
end