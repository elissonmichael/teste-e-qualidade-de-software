public class Aluno {
	private String nome;
	private float nota;

	Aluno(String nome, float nota){
		this.nome = nome;
		this.nota = nota;
	}

	public boolean aprovado() {
		return nota >= 6;
	}

	public boolean reprovado() {
		return nota < 6;
	}

	public float getNota() {
		return nota;
	}

}
