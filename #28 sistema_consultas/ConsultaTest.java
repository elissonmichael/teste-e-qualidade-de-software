import static org.junit.Assert.assertEquals;
import java.util.Arrays;
import java.util.Date;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

class MedicoTest {
	Medico medico;
	Paciente paciente1;
	Paciente paciente2;
	Date data;

	@BeforeEach
	void setUp() throws Exception {
		medico = new Medico("Dra. Satya Ananda");
		paciente1 = new Paciente("Élisson Michael");
		paciente2 = new Paciente("Brandon Nyorai");
		data = new Date(2018, 3, 16);
	}

	@Test
	void testRetornodePacientesdeumaDeterminadaData() {
		paciente1.agendarConsulta(medico, data);
		paciente2.agendarConsulta(medico, data);
		assertEquals(Arrays.asList(paciente1, paciente2), medico.pacientesDoDia(data));
		assertEquals(Arrays.asList(), medico.pacientesDoDia(new Date(2018, 3, 17)));
	}

	@Test
	void testRetornoDeDatasEmQueAtendeuUmDeterminadoPaciente() {
		paciente1.agendarConsulta(medico, data);
		assertEquals(Arrays.asList("16/04/18"), medico.datasDeAtendimentoDo(paciente1));
		assertEquals(Arrays.asList(), medico.datasDeAtendimentoDo(paciente2));
	}
}
