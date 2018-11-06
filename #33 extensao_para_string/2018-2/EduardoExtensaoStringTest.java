import java.util.stream.Collectors;
import java.util.stream.Stream;

import junit.framework.TestCase;

class ExtensaoString {
	public static String titleize(String frase) {
		return Stream.of(frase.split(" "))
							.map(word -> String.valueOf(word.charAt(0)).toUpperCase() + word.substring(1).toLowerCase())
							.collect(Collectors.joining(" "));
	}

	public static boolean isBlank(Object frase){
		return String.valueOf(frase).matches("^\\s*$");
	}
}

public class EduardoExtensaoStringTest extends TestCase {

	public void test_titleize_escreve_com_maiuscula_cada_palavra_em_uma_string() {
		assertEquals("Imagine All The People", ExtensaoString.titleize("imagine all the people"));
	}

	public void test_titleize_escreve_com_maiuscula_strings_de_uma_palavra() {
		assertEquals("Eduardo", ExtensaoString.titleize("eduardo"));
	}

	public void test_titleize_escreve_com_maiuscula_uma_string_toda_em_maiusculo() {
		assertEquals("Imagine All The People", ExtensaoString.titleize("IMAGINE ALL THE PEOPLE"));
	}

	public void test_titleize_escreve_com_maiuscula_uma_string_com_letras_misturadas() {
		assertEquals("Imagine All The People", ExtensaoString.titleize("iMaGinE aLL tHe pEoPLe"));
	}

	public void test_blank_retorna_true_quando_a_string_e_vazia() {
		assertEquals(true, ExtensaoString.isBlank(""));
	}

	public void test_blank_retorna_true_quando_a_string_contem_apenas_espacos() {
		assertEquals(true, ExtensaoString.isBlank("      "));
	}

	public void test_blank_retorna_true_quando_a_string_contem_apenas_tabs() {
		assertEquals(true, ExtensaoString.isBlank("		"));
		// # exemplo: "\t\t\t"
	}

	public void test_blank_retorna_true_quando_a_string_contem_apenas_espacos_e_tabs() {
		assertEquals(true, ExtensaoString.isBlank("	 	 	 	"));
	}

	public void test_blank_retorna_false_se_a_string_contem_uma_letra() {
		assertEquals(false, ExtensaoString.isBlank("a"));
	}

	public void test_blank_retorna_false_se_a_string_contem_um_numero() {
		assertEquals(false, ExtensaoString.isBlank(1));
	}

}
