import junit.framework.TestCase;

class ArgumentError extends RuntimeException {}

class DistanciaEntreSequencias {

	public static Object calcular(String sequencia1, String sequencia2) {
		if (sequencia1.length() != sequencia2.length())
			throw new ArgumentError();

		if (sequencia1.equals(sequencia2))
			return 0;

		int distancias = 0;
		for (int i = 0; i < sequencia1.length(); i++) {
			if (sequencia1.charAt(i) != sequencia2.charAt(i))
				distancias++;
		}

		return distancias;
	}
}

public class EduardoTranscicaoRnaTest extends TestCase {

	public void test_sequencias_vazias() {
		assertEquals(0, DistanciaEntreSequencias.calcular("", ""));
	}

	public void test_sequencias_iguais() {
		assertEquals(0, DistanciaEntreSequencias.calcular("A", "A"));
	}

	public void test_sequencias_longas_e_iguais() {
		assertEquals(0, DistanciaEntreSequencias.calcular("GGACTGA", "GGACTGA"));
	}

	public void test_tamanho_da_distancia_em_sequencias_com_um_valor() {
		assertEquals(1, DistanciaEntreSequencias.calcular("A", "G"));
	}

	public void test_tamanho_da_distancia_em_sequencias_pequenas() {
		assertEquals(2, DistanciaEntreSequencias.calcular("AG", "CT"));
	}

	public void test_tamanho_da_distancia_pequeno_em_sequencias_pequenas() {
		assertEquals(1, DistanciaEntreSequencias.calcular("AT", "CT"));
	}

	public void test_tamanho_da_distancia_pequeno() {
		assertEquals(1, DistanciaEntreSequencias.calcular("GGACG", "GGTCG"));
	}

	public void test_tamanho_da_distancia_pequeno_em_sequencias_longas() {
		assertEquals(2, DistanciaEntreSequencias.calcular("ACCAGGG", "ACTATGG"));
	}

	public void test_letra_diferente_na_primeira_sequencia() {
		assertEquals(1, DistanciaEntreSequencias.calcular("AAG", "AAA"));
	}

	public void test_letra_diferente_na_segunda_sequencia() {
		assertEquals(1, DistanciaEntreSequencias.calcular("AAA", "AAG"));
	}

	public void test_mesma_sequencia_em_diferentes_posicoes() {
		assertEquals(2, DistanciaEntreSequencias.calcular("TAG", "GAT"));
	}

	public void test_distancias_longas() {
		assertEquals(4, DistanciaEntreSequencias.calcular("GATACA", "GCATAA"));
	}

	public void test_distancias_longas_em_sequencias_com_um_deslocamento() {
		assertEquals(9, DistanciaEntreSequencias.calcular("GGACGGATTCTG", "AGGACGGATTCT"));
	}

	public void test_proibicao_da_primeira_sequencia_maior() {
		try {
			DistanciaEntreSequencias.calcular("AATG", "AAA");
			fail();
		} catch (ArgumentError e) {}
	}

	public void test_proibicao_da_segunda_sequencia_maior() {
		try {
			DistanciaEntreSequencias.calcular("ATA", "AGTG");
			fail();
		} catch (ArgumentError e) {}
	}

}
