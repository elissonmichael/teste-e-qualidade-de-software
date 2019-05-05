require 'minitest/autorun'
# require_relative 'aaaa-s/nome'

describe Adolescente do
  before do
    @adolescente = Adolescente.new
  end

  describe 'responde tanto faz' do
    it "quando recebe uma afirmação" do
      @adolescente.responder('Tomate. Toma-a-te.').must_equal 'Tanto faz.'
    end

    it "em frases que terminam com exclamação" do
      @adolescente.responder('Vamos ali atrás do muro!').must_equal 'Tanto faz.'
    end

    it "em frases com ponto de interrogação no meio" do
      @adolescente.responder('Terminar com ? significa uma pergunta.').must_equal 'Tanto faz.'
    end
  end

  describe 'responde ei relaxa ai' do
    it "quando recebe um grito" do
      @adolescente.responder('CUIDADO!').must_equal 'Ei, relaxa aí!'
    end

    it "quando recebe um grito que é uma pergunta" do
      @adolescente.responder('O QUE DIABOS VOCÊ ESTÁ PENSANDO?').must_equal 'Ei, relaxa aí!'
    end

    it "quando recebe um grito com números" do
      @adolescente.responder('1, 2, 3 VAI!').must_equal 'Ei, relaxa aí!'
    end

    it "quando recebe um grito com caracteres especiais" do
      @adolescente.responder('ZUMBIS P%^*Q@#$(*^P, ZUMBIS ESTÃO VINDO!!11!!1!').must_equal 'Ei, relaxa aí!'
    end

    it "quando recebe um grito sem ponto de exclamação" do
      @adolescente.responder('EU TE ODEIO').must_equal 'Ei, relaxa aí!'
    end
  end

  describe 'responde certo' do
    it "quando recebe uma pergunta" do
      @adolescente.responder('Essa roupa me deixa gorda?').must_equal 'Certo.'
    end
  end

  describe 'responde ok que seja' do
    it "quando recebe uma string vazia" do
      @adolescente.responder('').must_equal 'Ok, que seja!'
    end

    it "quando recebe nulo" do
      @adolescente.responder(nil).must_equal 'Ok, que seja!'
    end
  end
end
