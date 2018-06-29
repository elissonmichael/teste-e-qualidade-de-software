public class Medico {
	public String nome;
	public List<Consulta> consultas;

	public Medico(String nome) {
		this.nome = nome;
		this.consultas = new ArrayList<>();
	}

	public List<Paciente> pacientesDoDia(Date data) {
		List<Paciente> pacientes = new ArrayList<>();
		for(Consulta consulta : consultas) {
			if (data.equals(consulta.data))
				pacientes.add(consulta.paciente);
		}
		return pacientes;
	}

	public List<String> datasDeAtendimentoDo(Paciente paciente) {
		List<String> datas = new ArrayList<>();
		for(Consulta consulta : consultas) {
			if (paciente.equals(consulta.paciente))
				datas.add(consulta.dataFormatada());
		}
		return datas;
	}
}

public class Paciente {
	public String nome;
	public List<Consulta> consultas;

	public Paciente(String nome) {
		this.nome = nome;
		this.consultas = new ArrayList<>();
	}

	public void agendarConsulta(Medico medico, Date data) {
		new Consulta(this, medico, data).agendar();
	}
}

public class Consulta {
	public Paciente paciente;
	public Medico medico;
	public Date data;

	public Consulta(Paciente paciente, Medico medico, Date data) {
		this.paciente = paciente;
		this.medico = medico;
		this.data = data;
	}

	public void agendar() {
		paciente.consultas.add(this);
		medico.consultas.add(this);
	}

	public String dataFormatada() {
		return new SimpleDateFormat("dd/MM/yy").format(data);
	}
}
