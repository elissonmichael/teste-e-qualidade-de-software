abstract class AbstractContato {
	protected String nome;
	protected String telefone;
	protected String email;
  public abstract String getNome();
  public abstract String getTelefone();
  public abstract String getEmail();
}

public class Contato extends AbstractContato {
	public Contato(String nome, String telefone, String email) {
		this.nome = nome;
		this.telefone = telefone;
		this.email = email;
	}

	@Override
	public String getNome() {
		return nome;
	}

	@Override
	public String getTelefone() {
		return telefone;
	}

	@Override
	public String getEmail() {
		return email;
	}
}

public class NullContato extends AbstractContato {
	@Override
	public String getNome() {
		return "Nenhum Nome";
	}

	@Override
	public String getTelefone() {
		return "Nenhum Telefone";
	}

	@Override
	public String getEmail() {
		return "Nenhum Email";
	}
}

public class Fornecedor {
	Local local;
	AbstractContato contato;

	Fornecedor(Local local, Contato contato) {
		this.local = local;
		this.contato = contato;

    }

	Fornecedor(Local local) {
		this.local = local;
		this.contato = new NullContato();

    }

	public String nomeDoContato() {
		return this.contato.getNome();
	}

	public String telefoneDoContato() {
		return this.contato.getTelefone();
	}

	public String emailDoContato() {
		return this.contato.getEmail();
	}
}

public class Local {
	String nome;

	public Local(String nome) {
		this.nome = nome;
	}

	public String getNome() {
		return nome;
	}
}
