import junit.framework.TestCase;

class Adolescente {
	public String responder(String pergunta) {
		if(pergunta == null || pergunta.isEmpty()) {
			return "Ok, que seja!";
		}
		if(pergunta.equals(pergunta.toUpperCase())) {
			return "Ei, relaxa aí!";
		}
		if(pergunta.endsWith("?")) {
			return "Certo.";
		}
		return "Tanto faz.";
	}
}

public class EduardoAdolescenteTest extends TestCase {

	private Adolescente adolescente;

	public EduardoAdolescenteTest() {
		adolescente = new Adolescente();
	}

	public void test_afirmar_algo () {
		assertEquals("Tanto faz.", adolescente.responder("Tomate. Toma-a-te."));
	}

	public void test_gritar () {
		assertEquals("Ei, relaxa aí!", adolescente.responder("CUIDADO!"));
	}

	  public void test_perguntar () {
		assertEquals("Certo.", adolescente.responder("Essa roupa me deixa gorda?"));
	  }

	  public void test_exclamar () {
		assertEquals("Tanto faz.", adolescente.responder("Vamos ali atrás do muro!"));
	  }

	  public void test_perguntas_gritando () {
		assertEquals("Ei, relaxa aí!", adolescente.responder("O QUE DIABOS VOCÊ ESTÁ PENSANDO?"));
	  }

	  public void test_gritar_numeros () {
		assertEquals("Ei, relaxa aí!", adolescente.responder("1, 2, 3 VAI!"));
	  }

	  public void test_gritar_com_caracteres_especiais () {
		assertEquals("Ei, relaxa aí!", adolescente.responder("ZUMBIS P%^*Q@#$(*^P, ZUMBIS ESTÃO VINDO!!11!!1!"));
	  }

	  public void test_gritar_sem_ponto_de_exclamacao () {
		assertEquals("Ei, relaxa aí!", adolescente.responder("EU TE ODEIO"));
	  }

	  public void test_afirmacao_contendo_ponto_de_interrogacao () {
		assertEquals("Tanto faz.", adolescente.responder("Terminar com ? significa uma pergunta."));
	  }

	  public void test_silencio () {
		assertEquals("Ok, que seja!", adolescente.responder(""));
	  }

	  public void test_mais_silencio () {
		assertEquals("Ok, que seja!", adolescente.responder(null));
	  }

}
