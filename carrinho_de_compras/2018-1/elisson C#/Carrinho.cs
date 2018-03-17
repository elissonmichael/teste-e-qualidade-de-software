using System.Collections;
using System.Collections.Generic;

public class Carrinho {
	private List<Item> itens = new List<Item>();
	private float total;

	public void Adicionar(Produto produto){
		itens.Add (new Item(produto));
	}

	public List<Produto> Produtos() {
		List<Produto> produtos = new List<Produto>();
		foreach (Item item in this.itens) {
			produtos.Add (item.Produto);
		}
		return produtos;
	}

	public int Quantidade(Produto produto){
		Item item_com_produto = ItemContendoProduto (produto);
		return item_com_produto.Quantidade;
	}	

	public float Total() {
		foreach (Item item in this.itens) total += item.Produto.Preco;
		return total;
	}

	protected Item ItemContendoProduto(Produto produto){
		Item item_com_produto = null;
		foreach (Item item in this.itens) {
			if (item.Produto == produto) item_com_produto = item;
		}
		return item_com_produto;
	}
}