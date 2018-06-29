public class Item {
	private Produto produto;
	private int quantidade;
	
	public Item(Produto produto){
		this.produto = produto;
		this.quantidade = 1;
	}
	
	public float valor() {
		return produto.getPreco() * quantidade;
	}

	public void setQuantidade(int quantidade) {
		this.quantidade = quantidade;
	}
	
	public int getQuantidade() {
		return quantidade;
	}
	
	public Produto getProduto() {
		return produto;
	}
}
