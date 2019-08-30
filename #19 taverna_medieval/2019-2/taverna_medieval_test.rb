require 'minitest/autorun'
require_relative 'PedroFreire'

describe TavernaMedieval do

  describe 'Quando é um Item Comum' do
    it 'Não muda o nome do item' do
      items = [Item.new('Espada Longa +1', 10, 20)]
      TavernaMedieval.new(items).atualizar_qualidade
      items[0].nome.must_equal 'Espada Longa +1'
    end
    it 'Decrementa vence_em em 1 com o tempo' do
      items = [Item.new('Espada Longa +1', 10, 20)]
      TavernaMedieval.new(items).atualizar_qualidade
      items[0].vence_em.must_equal 9
    end
    it 'Decrementa a qualidade em 1 com o tempo' do
      items = [Item.new('Espada Longa +1', 10, 20)]
      TavernaMedieval.new(items).atualizar_qualidade
      items[0].qualidade.must_equal 19
    end
    it 'Não deixa a qualidade negativa com o tempo' do
      items = [Item.new('Armadura de Couro', 10, 0)]
      TavernaMedieval.new(items).atualizar_qualidade
      items[0].qualidade.must_equal 0
    end
    it 'Decrementa qualidade em 2 com o tempo em itens vencidos' do
      items = [Item.new('Armadura de Couro', 0, 10)]
      TavernaMedieval.new(items).atualizar_qualidade
      items[0].qualidade.must_equal 8
    end
  end

  describe "Quando o Item é um 'Vinho'" do
    it 'Decrementa vence_em em 1 com o tempo' do
      items = [Item.new('Vinho', 10, 20)]
      TavernaMedieval.new(items).atualizar_qualidade
      items[0].vence_em.must_equal 9
    end
    it 'Incrementa a qualidade em 1 com o tempo' do
      items = [Item.new('Vinho', 2, 0)]
      TavernaMedieval.new(items).atualizar_qualidade
      items[0].qualidade.must_equal 1
    end
    it 'Incrementa a qualidade em 2 com o tempo quando vencido' do
      items = [Item.new('Vinho', 0, 0)]
      TavernaMedieval.new(items).atualizar_qualidade
      items[0].qualidade.must_equal 2
    end
    it 'Não incrementa a qualidade acima do máximo (50)' do
      items = [Item.new('Vinho', 2, 50)]
      TavernaMedieval.new(items).atualizar_qualidade
      items[0].qualidade.must_equal 50
    end
  end

  describe "Quando o Item é um 'Lendário'" do
    it 'Incrementa a qualidade em 1 com o tempo' do
      items = [Item.new('Lendário Martelo de Thor', 0, 80)]
      TavernaMedieval.new(items).atualizar_qualidade
      items[0].qualidade.must_equal 80
    end
    it 'Não decrementa o prazo de vencimento com o tempo' do
      items = [Item.new('Lendário Martelo de Thor', 1, 80)]
      TavernaMedieval.new(items).atualizar_qualidade
      items[0].vence_em.must_equal 1
    end
  end

  describe "Quando o Item é um 'Ingresso'" do
    it 'Decrementa vence_em em 1 com o tempo' do
      items = [Item.new('Ingresso para uma Orquestra', 10, 20)]
      TavernaMedieval.new(items).atualizar_qualidade
      items[0].vence_em.must_equal 9
    end
    it 'Incrementa a qualidade em 1 com o tempo' do
      items = [Item.new('Ingresso para uma Orquestra', 15, 48)]
      TavernaMedieval.new(items).atualizar_qualidade
      items[0].qualidade.must_equal 49
    end
    it 'Não incrementa a qualidade acima do máximo (50)' do
      items = [Item.new('Ingresso para uma Orquestra', 2, 50)]
      TavernaMedieval.new(items).atualizar_qualidade
      items[0].qualidade.must_equal 50
    end
    it 'Incrementa a qualidade em 2 quando vencer_em é menor ou igual a 10' do
      items = [Item.new('Ingresso para uma Orquestra', 10, 20)]
      TavernaMedieval.new(items).atualizar_qualidade
      items[0].qualidade.must_equal 22
    end
    it 'Incrementa a qualidade em 3 quando vencer_em é menor ou igual a 5' do
      items = [Item.new('Ingresso para uma Orquestra', 5, 20)]
      TavernaMedieval.new(items).atualizar_qualidade
      items[0].qualidade.must_equal 23
    end
    it 'Zera a qualidade quando vence' do
      items = [Item.new('Ingresso para uma Orquestra', 0, 20)]
      TavernaMedieval.new(items).atualizar_qualidade
      items[0].qualidade.must_equal 0
    end
  end

  describe "Quando o Item é uma 'Conjuração'" do
    it 'Decrementa vence_em em 1 com o tempo' do
      items = [Item.new('Arco Conjurado', 10, 20)]
      TavernaMedieval.new(items).atualizar_qualidade
      items[0].vence_em.must_equal 9
    end
    it 'Não deixa a qualidade negativa com o tempo' do
      items = [Item.new('Arco Conjurado', 10, 0)]
      TavernaMedieval.new(items).atualizar_qualidade
      items[0].qualidade.must_equal 0
    end
    it 'Decrementa a qualidade em 2 com o tempo' do
      items = [Item.new('Arco Conjurado', 3, 6)]
      TavernaMedieval.new(items).atualizar_qualidade
      items[0].qualidade.must_equal 4
    end
    it 'Decrementa a qualidade em 4 com o tempo quando vencido' do
      items = [Item.new('Arco Conjurado', 0, 6)]
      TavernaMedieval.new(items).atualizar_qualidade
      items[0].qualidade.must_equal 2
    end
  end
end
