using System.Collections;
using System.Collections.Generic;

public class Produto {
	public string Nome { get; set; }
	public float Preco { get; set; }
	public Produto(string nome, float preco) {
		this.Nome = nome;
		this.Preco = preco;
	}
}
