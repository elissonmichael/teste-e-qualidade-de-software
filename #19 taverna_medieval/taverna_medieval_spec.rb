require_relative 'taverna_medieval'

describe TavernaMedieval, '#atualizar_qualidade' do

  shared_examples_for 'Vencer_em de Item Padrão' do |nome_do_item|
    it 'Decrementa vence_em em 1 com o tempo' do
      items = [Item.new(nome_do_item, 10, 20)]
      TavernaMedieval.new(items).atualizar_qualidade
      expect(items[0].vence_em).to eq 9
    end
  end

  shared_examples_for 'Qualidade de Item Padrão' do |nome_do_item|
    it 'Não deixa a qualidade negativa com o tempo' do
      items = [Item.new(nome_do_item, 20, 0)]
      TavernaMedieval.new(items).atualizar_qualidade
      expect(items[0].qualidade).to eq 0
    end
  end

  shared_examples_for 'Qualidade de Vinho' do |nome_do_item|
    it 'Incrementa a qualidade em 1 com o tempo' do
      items = [Item.new(nome_do_item, 20, 0)]
      TavernaMedieval.new(items).atualizar_qualidade
      expect(items[0].qualidade).to eq 1
    end
    it 'Não incrementa a qualidade acima do máximo (50)' do
      items = [Item.new(nome_do_item, 20, 50)]
      TavernaMedieval.new(items).atualizar_qualidade
      expect(items[0].qualidade).to eq 50
    end
  end

  context 'Quando é um Item Comum' do
    it_behaves_like 'Vencer_em de Item Padrão', 'Espada Longa +1'
    it_behaves_like 'Qualidade de Item Padrão', 'Espada Longa +1'

    it 'Não muda o nome do item' do
      items = [Item.new('Espada Longa +1', 10, 20)]
      TavernaMedieval.new(items).atualizar_qualidade
      expect(items[0].nome).to eq 'Espada Longa +1'
    end
    it 'Decrementa a qualidade em 1 com o tempo' do
      items = [Item.new('Espada Longa +1', 10, 20)]
      TavernaMedieval.new(items).atualizar_qualidade
      expect(items[0].qualidade).to eq 19
    end
    it 'Decrementa qualidade em 2 com o tempo em itens vencidos' do
      items = [Item.new('Armadura de Couro', 0, 10)]
      TavernaMedieval.new(items).atualizar_qualidade
      expect(items[0].qualidade).to eq 8
    end
  end

  context "Quando o Item é um 'Vinho'" do
    it_behaves_like 'Vencer_em de Item Padrão', 'Vinho'
    it_behaves_like 'Qualidade de Vinho', 'Vinho'

    it 'Incrementa a qualidade em 2 com o tempo quando vencido' do
      items = [Item.new('Vinho', 0, 0)]
      TavernaMedieval.new(items).atualizar_qualidade
      expect(items[0].qualidade).to eq 2
    end
  end

  context "Quando o Item é um 'Lendário'" do
    it 'Não decrementa a qualidade com o tempo' do
      items = [Item.new('Lendário Martelo de Thor', 0, 80)]
      TavernaMedieval.new(items).atualizar_qualidade
      expect(items[0].qualidade).to eq 80
    end
    it 'Não decrementa o prazo de vencimento com o tempo' do
      items = [Item.new('Lendário Martelo de Thor', 1, 80)]
      TavernaMedieval.new(items).atualizar_qualidade
      expect(items[0].vence_em).to eq 1
    end
  end

  context "Quando o Item é um 'Ingresso'" do
    it_behaves_like 'Vencer_em de Item Padrão', 'Ingresso para uma Orquestra'
    it_behaves_like 'Qualidade de Vinho', 'Ingresso para uma Orquestra'

    it 'Incrementa a qualidade em 2 quando vencer_em é menor ou igual a 10' do
      items = [Item.new('Ingresso para uma Orquestra', 10, 20)]
      TavernaMedieval.new(items).atualizar_qualidade
      expect(items[0].qualidade).to eq 22
    end
    it 'Incrementa a qualidade em 3 quando vencer_em é menor ou igual a 5' do
      items = [Item.new('Ingresso para uma Orquestra', 5, 20)]
      TavernaMedieval.new(items).atualizar_qualidade
      expect(items[0].qualidade).to eq 23
    end
    it 'Zera a qualidade quando vence' do
      items = [Item.new('Ingresso para uma Orquestra', 0, 20)]
      TavernaMedieval.new(items).atualizar_qualidade
      expect(items[0].qualidade).to eq 0
    end
  end

  context "Quando o Item é uma 'Conjuração'" do
    it_behaves_like 'Vencer_em de Item Padrão', 'Arco Conjurado'
    it_behaves_like 'Qualidade de Item Padrão', 'Arco Conjurado'

    it 'Decrementa a qualidade em 2 com o tempo' do
      items = [Item.new('Arco Conjurado', 3, 6)]
      TavernaMedieval.new(items).atualizar_qualidade
      expect(items[0].qualidade).to eq 4
    end
    it 'Decrementa a qualidade em 4 com o tempo quando vencido' do
      items = [Item.new('Arco Conjurado', 0, 6)]
      TavernaMedieval.new(items).atualizar_qualidade
      expect(items[0].qualidade).to eq 2
    end
  end
end
