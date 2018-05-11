import java.util.ArrayList;

public class Turma {
	private ArrayList<Aluno> alunos;

	Turma(){
		alunos = new ArrayList<Aluno>();
	}

	public void adicionar (Aluno aluno) {
		alunos.add(aluno);
	}

	public ArrayList<Aluno> getAlunos(){
		return alunos;
	}

	public ArrayList<Aluno> aprovados(){
		ArrayList<Aluno> aprovados = new ArrayList<Aluno>();
		for (Aluno aluno : alunos) {
			if (aluno.aprovado()) aprovados.add(aluno);
		}
		return aprovados;
	}

	public ArrayList<Aluno> reprovados(){
		ArrayList<Aluno> reprovados = new ArrayList<Aluno>();
		for (Aluno aluno : alunos) {
			if (aluno.reprovado()) reprovados.add(aluno);
		}
		return reprovados;
	}

	public float media() {
		float total = 0;
		for (Aluno aluno : alunos) total += aluno.getNota();
		return total / alunos.size();
	}
}
