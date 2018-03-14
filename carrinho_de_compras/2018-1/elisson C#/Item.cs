using System.Collections;
using System.Collections.Generic;

public class Item {
	public Produto Produto { get; set; }
	public int Quantidade { get; set; }
	public Item(Produto produto) {
		this.Produto = produto;
		this.Quantidade = 1;
	}

	public float Total(){
		return this.Produto.Preco * this.Quantidade;
	}
}
