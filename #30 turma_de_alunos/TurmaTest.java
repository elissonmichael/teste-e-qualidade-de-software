import static org.junit.jupiter.api.Assertions.*;

import java.util.Arrays;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

class TurmaTest {
	Turma turma;
	Aluno jose;
	Aluno joao;
	Aluno maria;

	@BeforeEach
	void setUp() throws Exception {
		turma = new Turma();
		jose  = new Aluno("José", 6);
		joao  = new Aluno("João", 5);
		maria = new Aluno("Maria", 7);
		turma.adicionar(jose);
		turma.adicionar(joao);
		turma.adicionar(maria);
	}

	@Test
	void testAlunosAdicionados() {
		assertEquals(Arrays.asList(jose, joao, maria), turma.getAlunos());
	}

	@Test
	void testAlunosAprovados() {
		assertEquals(Arrays.asList(jose, maria), turma.aprovados());
	}

	@Test
	void testAlunosReprovados() {
		assertEquals(Arrays.asList(joao), turma.reprovados());
	}

	@Test
	void testMediaDaTurma() {
		assertEquals(6.0, turma.media());
	}
}
