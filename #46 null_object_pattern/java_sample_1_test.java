import static org.junit.Assert.assertEquals;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

class FornecedorTest {
	  Fornecedor fornecedor;
	  Local local;
	  Contato contato;
	
	@BeforeEach
	void setup() {
		local = new Local("Deveria Ser Obrigatório");
	  	contato = new Contato("Fulano", "99998888", "fulano@email.com");
	}

	@Test
	void testFornecedorComContato() {
	    fornecedor = new Fornecedor(local,  contato);
	    assertEquals("Fulano", fornecedor.nomeDoContato());
	    assertEquals("99998888", fornecedor.telefoneDoContato());
	    assertEquals("fulano@email.com", fornecedor.emailDoContato());
	}

	@Test
	void testFornecedorSemContato() {
	    fornecedor = new Fornecedor(local);
	    assertEquals("Nenhum Nome", fornecedor.nomeDoContato());
	    assertEquals("Nenhum Telefone", fornecedor.telefoneDoContato());
	    assertEquals("Nenhum Email", fornecedor.emailDoContato());
	}
	
}
