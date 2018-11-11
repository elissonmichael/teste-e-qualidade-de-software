import junit.framework.TestCase;

class Complemento {

	public static String do_dna(String base) {
		String dna = "";

		for (char c : base.toCharArray()) {
			if (c == 'C') {
				dna += "G";
			} else if (c == 'G') {
				dna += "C";
			} else if (c == 'T') {
				dna += "A";
			} else if (c == 'A') {
				dna += "U";
			} else {
				return "";
			}
		}

		return dna;
	}
}

public class EduardoTranscicaoRnaTest extends TestCase {

	public void test_transcricao_de_g_para_c() {
		assertEquals("G", Complemento.do_dna("C"));
	}

	public void test_transcricao_de_c_para_g() {
		assertEquals("C", Complemento.do_dna("G"));
	}

	public void test_transcricao_de_a_para_t() {
		assertEquals("A", Complemento.do_dna("T"));
	}

	public void test_transcricao_de_u_para_a() {
		assertEquals("U", Complemento.do_dna("A"));
	}

	public void test_complemento_de_uma_sequencia_de_rna() {
		assertEquals("UGCACCAGAAUU", Complemento.do_dna("ACGTGGTCTTAA"));
	}

	public void test_lida_com_entrada_incorreta_de_rna() {
		assertEquals("", Complemento.do_dna("U"));
	}

	public void test_lida_corretamente_com_entrada_invalida() {
		assertEquals("", Complemento.do_dna("XXX"));
	}

	public void test_lida_corretamente_com_entrada_parcialmente_invalida() {
		assertEquals("", Complemento.do_dna("ACGTXXXCTTAA"));
	}

}
