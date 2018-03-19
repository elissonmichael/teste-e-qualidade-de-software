public class Produto {
	
	private String nome;
	private float preco;

	public Produto(){
		
	}

	public Produto(String nome, float preco){
		this.nome = nome;
		this.preco = preco;
	}

	public String getNome(){
		return this.nome;
	}
	public void setNome(String nome){
		this.nome = nome;
	}
	public float getPreco(){
		return this.preco;
	}
	public void setPreco(float preco){
		this.preco = preco;
	}
}