require 'minitest/autorun'
require_relative 'aaaa-s/seu_nome'

describe Arvore do
  attr_reader :arvore
  before do
    @arvore = Arvore.new
  end

  describe 'quando é criada' do
    it 'deve ter zero anos de vida' do
      arvore.idade.must_equal 0
    end

    it 'deve ter zero metros de altura' do
      arvore.altura.must_equal 0.0
    end

    it 'não tem frutas' do
      arvore.frutas.must_equal 0
    end

    it 'deve estar viva' do
      arvore.must_be :viva?
    end
  end

  describe 'ao passar um ano' do
    before do
      arvore.passar_um_ano
    end

    it 'deve ter 1 ano de idade' do
      arvore.idade.must_equal 1
    end

    it 'deve ter meio metro de altura' do
      arvore.altura.must_equal 0.5
    end

    it 'não deve ter frutas' do
      arvore.frutas.must_equal 0
    end
  end

  describe 'ao passar 10 anos' do
    before do
      10.times{ arvore.passar_um_ano }
    end

    it 'deve ter 10 anos de idade' do
      arvore.idade.must_equal 10
    end

    it  'deve ter 5 metros de altura' do
      arvore.altura.must_equal 5.0
    end

    it 'deve dar 10 frutas' do
      arvore.frutas.must_equal 10
    end

    it 'deve estar viva' do
      arvore.must_be :viva?
    end
  end

  describe 'ao pegar fruta' do
    before do
      3.times{ arvore.passar_um_ano }
    end

    it 'deve decrementar frutas cada vez que for chamado' do
      frutas = 10
      10.times do
        arvore.pegar_uma_fruta
        arvore.frutas.must_equal frutas -= 1
      end
    end

    it 'não permite que as frutas fiquem com valor negativo' do
      15.times{ arvore.pegar_uma_fruta }
      arvore.frutas.must_equal 0
    end
  end

  describe 'ao passar 99 anos' do
    before do
      100.times{ arvore.passar_um_ano }
    end

    it 'deve ter 100 anos de idade' do
      arvore.idade.must_equal 100
    end

    it  'deve ter 50 metros de altura' do
      arvore.altura.must_equal 50.0
    end

    it 'não deve dar frutas' do
      arvore.frutas.must_equal 0
    end

    it 'deve morrer' do
      arvore.wont_be :viva?
    end
  end
end
