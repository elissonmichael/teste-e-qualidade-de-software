import junit.framework.TestCase;

interface Opcao {
	String getValue();
}
class Unidade implements Opcao{
	private String value;
	public Unidade(String value) { this.value = value; }
	@Override public String getValue() { return value; }
}
class Precisao implements Opcao{
	private String value;
	public Precisao(Integer value) { this.value = String.valueOf(value); }
	@Override public String getValue() { return value; }
}
class Delimitador implements Opcao{
	private String value;
	public Delimitador(String value) { this.value = value; }
	@Override public String getValue() { return value; }
}
class Separador implements Opcao{
	private String value;
	public Separador(String value) { this.value = value; }
	@Override public String getValue() { return value; }
}

class Moeda {
	public static String numeroParaMoeda(double d, Opcao... opcoes){
		return numeroParaMoeda(String.format("%f", d).replace(",", "."), opcoes);
	}
	public static String numeroParaMoeda(String numero, Opcao... opcoes){
		String unidade = "R$";
		Integer precisao = 2;
		String delimitador = ".";
		String separador = ",";

		for (Opcao opcao : opcoes) {
			if(opcao instanceof Unidade)
				unidade = opcao.getValue();
			if(opcao instanceof Precisao)
				precisao = Integer.parseInt(opcao.getValue());
			if(opcao instanceof Delimitador)
				delimitador = opcao.getValue();
			if(opcao instanceof Separador)
				separador = opcao.getValue();
		}

		if(precisao.equals(0))
			separador = "";

		String[] numeroSplit = numero.split("\\.");
		String inteiro = numeroSplit[0];
		String decimal = numeroSplit.length==2?numeroSplit[1]:"";

	    StringBuilder inteiroSb = new StringBuilder(inteiro);
	    int i = inteiro.length();
	    while (i > 3) {
            i -= 3;
            inteiroSb.insert(i, delimitador);
        }

		String precisaoDecimal = "";
	    if(!precisao.equals(0)) {
	    	int max = precisao;
	    	if (max > decimal.length())
	    		max = decimal.length();

	    	decimal = decimal.substring(0, max);
	    	precisaoDecimal = String.format("%-"+precisao+"s", decimal).replace(' ', '0');
	    }

		return unidade + inteiroSb + separador + precisaoDecimal;
	}
}

public class EduardoMoedaTest extends TestCase {

	public void test_formatacao_de_inteiro() {
		assertEquals("R$1,00", Moeda.numeroParaMoeda(1));
	}

	public void test_formatacao_de_float() {
		assertEquals("R$1,35", Moeda.numeroParaMoeda(1.35));
	}

	public void test_formatacao_de_string() {
		assertEquals("R$123,00", Moeda.numeroParaMoeda("123"));
	}

	public void test_uso_de_delimitadores_para_numeros_grandes() {
		assertEquals("R$1.000.000.000,00", Moeda.numeroParaMoeda(1_000_000_000));
	}

	public void test_ausencia_de_delimitadores_em_numeros_pequenos() {
		assertEquals("R$10,00", Moeda.numeroParaMoeda(10));
	}

	public void test_mudanca_da_unidade() {

		assertEquals("$10,00", Moeda.numeroParaMoeda(10, new Unidade("$")));
	}

	public void test_mudanca_da_precisao() {
		assertEquals("R$10,0", Moeda.numeroParaMoeda(10, new Precisao(1)));
	}

	public void test_ausencia_de_separador_quando_precisao_for_0() {
		assertEquals("R$10", Moeda.numeroParaMoeda(10, new Precisao(0)));
	}

	public void test_mudanca_do_delimitador() {
		assertEquals("R$1;000;000,00", Moeda.numeroParaMoeda(1000000, new Delimitador(";")));
	}

	public void test_mudanca_do_separador() {
		assertEquals("R$10;00", Moeda.numeroParaMoeda(10, new Separador(";")));
	}

	public void test_multiplas_opcoes_de_formatacao_simultaneamente() {
		assertEquals("$10;00", Moeda.numeroParaMoeda(10, 	new Separador(";"),
															new Delimitador("|"),
															new Precisao(2),
															new Unidade("$")));
	}

}
