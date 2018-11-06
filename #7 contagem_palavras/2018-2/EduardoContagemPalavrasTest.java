import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map.Entry;

import junit.framework.TestCase;

class Frase {

	private String frase;

	public Frase(String frase) {
		this.frase = frase;
	}

	public String contePalavras() {
		HashMap<String, Integer> map = new LinkedHashMap<>();

		String fraseLimpa = frase.replaceAll("[\\^\\$\\n\\s,:'!?&@%&]+", " ").toLowerCase();

		for (String palavra : fraseLimpa.split(" ")) {
			if(map.containsKey(palavra))
				map.put(palavra, map.get(palavra)+1);
			else
				map.put(palavra, 1);
		}

		return printRetorno(map);
	}

	public String printRetorno(HashMap<String, Integer> map) {
		String retorno = "";
		for (Entry<String, Integer> i : map.entrySet()) {
			retorno += ", '" + i.getKey() + "' => " + i.getValue();
		}
		return "{" + retorno.substring(1) + " }";
	}
}

public class EduardoContagemPalavrasTest extends TestCase {

	public void test_conta_uma_palavra(){
		Frase frase = new Frase("palavra");
		String contagem = "{ 'palavra' => 1 }";
		assertEquals(contagem, frase.contePalavras());
	}

	public void test_conta_uma_de_cada_palavra(){
		Frase frase = new Frase("uma de cada");
		String contagem = "{ 'uma' => 1, 'de' => 1, 'cada' => 1 }";
		assertEquals(contagem, frase.contePalavras());
	}

	public void test_multiplas_ocorrencias_de_uma_palavra(){
		Frase frase = new Frase("um peixe dois peixe vermelho peixe azul peixe");
		String contagem = "{ 'um' => 1, 'peixe' => 4, 'dois' => 1, 'vermelho' => 1, 'azul' => 1 }";
		assertEquals(contagem, frase.contePalavras());
	}

	public void test_frase_sem_espacos(){
		Frase frase = new Frase("um,dois,quatro");
		String contagem = "{ 'um' => 1, 'dois' => 1, 'quatro' => 1 }";
		assertEquals(contagem, frase.contePalavras());
	}

	public void test_frase_com_quebras_de_linha(){
		Frase frase = new Frase("um,\ndois,\nquatro");
		String contagem = "{ 'um' => 1, 'dois' => 1, 'quatro' => 1 }";
		assertEquals(contagem, frase.contePalavras());
	}

	public void test_ignora_pontuacao(){
		Frase frase = new Frase("carro: tapete como java: javascript!!&@$%^&");
		String contagem = "{ 'carro' => 1, 'tapete' => 1, 'como' => 1, 'java' => 1, 'javascript' => 1 }";
		assertEquals(contagem, frase.contePalavras());
	}

	public void test_inclusao_de_numeros(){
		Frase frase = new Frase("testando, 1, 2 testando");
		String contagem = "{ 'testando' => 2, '1' => 1, '2' => 1 }";
		assertEquals(contagem, frase.contePalavras());
	}

	public void test_normaliza_maiusculas(){
		Frase frase = new Frase("vai Vai VAI Para para");
		String contagem = "{ 'vai' => 3, 'para' => 2 }";
		assertEquals(contagem, frase.contePalavras());
	}

	public void test_com_aspas(){
		Frase frase = new Frase("Ele quis dizer 'grande' ou grande?");
		String contagem = "{ 'ele' => 1, 'quis' => 1, 'dizer' => 1, 'grande' => 2, 'ou' => 1 }";
		assertEquals(contagem, frase.contePalavras());
	}

}
