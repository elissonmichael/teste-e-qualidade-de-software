import java.util.ArrayList;

public class Carrinho {
	private ArrayList<Item> itens;
	
	public Carrinho() {
		this.itens = new ArrayList<Item>();
	}
	
	public ArrayList<Produto> getProdutos() {
		ArrayList<Produto> produtos = new ArrayList<Produto>();
		for(Item item : itens) 	produtos.add(item.getProduto());
		return produtos;
	}
	
	public void incluir(Produto produto) {
		itens.add(new Item(produto));
	}
	
	public void remover(Produto produto) {
		itens.remove(itemComProduto(produto));
	}

	public void alterarQuantidade(Produto produto, int quantidade) {
		itemComProduto(produto).setQuantidade(quantidade);
	}
	
	public int getQuantidade(Produto produto) {
		return itemComProduto(produto).getQuantidade();
	}

	public float getTotal() {
		float total = 0;
		for(Item item : itens) total += item.valor();
		return total;
	}
	
	private Item itemComProduto(Produto produto) {
		for(Item item : itens) {
			if (item.getProduto() == produto) return item;
		}
		return null;
	}
}