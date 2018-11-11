import java.util.stream.IntStream;

import junit.framework.TestCase;

class Arvore {

	private int idade;
	private double altura;
	private int frutas;

	public void passarUmAno() {
		this.idade += 1;
		this.altura += .5;

		if (this.idade % 2 == 0 && this.estaViva()) {
			this.frutas = 10;
		} else {
			this.frutas = 0;
		}
	}

	public boolean estaViva() {
		return this.idade < 100;
	}

	public int getIdade() {
		return this.idade;
	}

	public double getAltura() {
		return this.altura;
	}

	public int getFrutas() {
		return this.frutas;
	}

	public void pegarUmaFruta() {
		if (this.frutas > 0)
			this.frutas--;
	}
}

public class EduardoArvoreTest extends TestCase {

	private Arvore arvore;

	public EduardoArvoreTest() {
		arvore = new Arvore();
	}

	// arvore criada
	public void test_deve_ter_zero_anos_de_vida() {
		assertEquals(0, arvore.getIdade());
	}

	public void test_deve_ter_zero_metros_de_altura() {
		assertEquals(0.0, arvore.getAltura());
	}

	public void test_nao_tem_frutas() {
		assertEquals(0, arvore.getFrutas());
	}

	public void test_deve_estar_viva() {
		assertTrue(arvore.estaViva());
	}

	// passou 1 ano
	public void passou1ano() {
		arvore = new Arvore();
		arvore.passarUmAno();
	}

	public void test_deve_ter_1_ano_de_idade() {
		passou1ano();
		assertEquals(1, arvore.getIdade());
	}

	public void test_deve_ter_meio_metro_de_altura() {
		passou1ano();
		assertEquals(0.5, arvore.getAltura());
	}

	public void test_nao_deve_ter_frutas() {
		passou1ano();
		assertEquals(0, arvore.getFrutas());
	}

	// passou 10 anos
	public void passou10anos() {
		arvore = new Arvore();
		IntStream.range(0, 10).forEachOrdered(i -> arvore.passarUmAno());
	}

	public void test_deve_ter_10_anos_de_idade() {
		passou10anos();
		assertEquals(10, arvore.getIdade());
	}

	public void deve_ter_5_metros_de_altura() {
		passou10anos();
		assertEquals(5, arvore.getAltura());
	}

	public void test_deve_dar_10_frutas() {
		passou10anos();
		assertEquals(10, arvore.getFrutas());
	}

	public void test_deve_estar_viva_com_10_anos_de_idade() {
		passou10anos();
		assertTrue(arvore.estaViva());
	}

	// passou 3 anos
	public void passou3anos() {
		arvore = new Arvore();
		IntStream.range(0, 10).forEachOrdered(i -> arvore.passarUmAno());
	}

	public void test_deve_decrementar_frutas_cada_vez_que_for_chamado() {
		passou3anos();
		int frutas = 10;

		IntStream.range(1, 10).forEachOrdered(i -> {
			arvore.pegarUmaFruta();
			assertEquals(frutas - i, arvore.getFrutas());
		});
	}

	public void test_nao_permite_que_as_frutas_fiquem_com_valor_negativo() {
		passou3anos();
		IntStream.range(0, 15).forEachOrdered(i -> {
			arvore.pegarUmaFruta();
		});
		assertEquals(0, arvore.getFrutas());
	}

	// passou 100 anos
	public void passou100anos() {
		arvore = new Arvore();
		IntStream.range(0, 100).forEachOrdered(i -> arvore.passarUmAno());
	}

	public void test_deve_ter_100_anos_de_idade() {
		passou100anos();
		assertEquals(100, arvore.getIdade());
	}

	public void test_deve_ter_50_metros_de_altura() {
		passou100anos();
		assertEquals(50.0, arvore.getAltura());
	}

	public void test_nao_deve_dar_frutas() {
		passou100anos();
		assertEquals(0, arvore.getFrutas());
	}

	public void test_deve_morrer() {
		passou100anos();
		assertFalse(arvore.estaViva());
	}
}
