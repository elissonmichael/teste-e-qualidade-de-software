import static org.junit.jupiter.api.Assertions.*;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

class JokenpoTest {
	Pedra 	pedra;
	Papel 	papel;
	Tesoura tesoura;

	@BeforeEach
	void setUp() throws Exception {
		pedra 	= new Pedra();
		papel 	= new Papel();
		tesoura = new Tesoura();
	}

	@Test
	void testPapelVencePedra() {
		assertTrue(papel.vence(pedra));
	}
	@Test
	void testPapelNaoVenceTesoura() {
		assertFalse(papel.vence(tesoura));
	}
	@Test
	void testPedraVenceTesoura() {
		assertTrue(pedra.vence(tesoura));
	}
	@Test
	void testPedraNaoVencePapel() {
		assertFalse(pedra.vence(papel));
	}
	@Test
	void testTesouraVencePapel() {
		assertTrue(tesoura.vence(papel));
	}
	@Test
	void testTesouraNaoVencePedra() {
		assertFalse(tesoura.vence(pedra));
	}
	@Test
	void testJokenpoRetornaVencedor() {
		assertEquals("Jogador 1 Venceu", new Jokenpo(pedra, tesoura).vencedor());
		assertEquals("Jogador 1 Venceu", new Jokenpo(tesoura, papel).vencedor());
		assertEquals("Jogador 1 Venceu", new Jokenpo(papel, pedra).vencedor());
		assertEquals("Jogador 2 Venceu", new Jokenpo(tesoura, pedra).vencedor());
		assertEquals("Jogador 2 Venceu", new Jokenpo(papel, tesoura).vencedor());
		assertEquals("Jogador 2 Venceu", new Jokenpo(pedra, papel).vencedor());
	}
	@Test
	void testJokenpoRetornaEmpateQuandoOpcoesSaoIguais() {
		assertEquals("Empate", new Jokenpo(tesoura, tesoura).vencedor());
		assertEquals("Empate", new Jokenpo(papel, papel).vencedor());
		assertEquals("Empate", new Jokenpo(pedra, pedra).vencedor());
	}
}
