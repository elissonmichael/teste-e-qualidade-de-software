require_relative 'aaaa-s/nome'

describe Carrinho do
  let(:produto)  { Produto.new('Mass Effect 3', 50) }
  let(:carrinho) { Carrinho.new }

  context 'Administração de Produtos' do
    it 'Adiciona e Lista Produtos' do
      carrinho.incluir(produto)
      expect(carrinho.produtos).to eq [produto]
    end

    it 'Remove Produto' do
      carrinho.incluir(produto)
      carrinho.remover(produto)
      expect(carrinho.produtos.size).to eq 0
    end

    it 'Altera Quantidade do Produto' do
      carrinho.incluir(produto)
      expect(carrinho.quantidade(produto)).to eq 1
      carrinho.alterar_quantidade(produto, 2)
      expect(carrinho.quantidade(produto)).to eq 2
    end
  end

  context 'Cálculo de Preço' do
    it 'Calcula Valor Total dos seus Produtos' do
      carrinho.incluir(produto)
      bioshock = Produto.new('BioShock 2', 40)
      carrinho.incluir(bioshock)
      carrinho.alterar_quantidade(bioshock, 2)
      expect(carrinho.total).to eq 130
    end
  end
end
