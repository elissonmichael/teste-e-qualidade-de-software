require_relative 'lista_enzo'
require 'minitest/autorun'

class ListaTest < MiniTest::Test
  def setup
    @lista = Lista.new
  end

  def test_adiciona_item
    @lista.adicionar('darude-sandstorm.mp3')
    assert_equal @lista.itens, ['darude-sandstorm.mp3']
  end

  def test_adiciona_multiplos_itens
    @lista.adicionar('Imagem')
    @lista.adicionar('rebel-yell.mp3')
    assert_equal @lista.itens, ['rebel-yell.mp3', 'Imagem']
  end

  def test_adiciona_item_repetido
    @lista.adicionar('Imagem')
    @lista.adicionar('gta-sa.iso')
    @lista.adicionar('Imagem')
    assert_equal @lista.itens, ['Imagem', 'gta-sa.iso']
  end
end
