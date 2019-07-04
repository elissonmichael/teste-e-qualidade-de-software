import static org.junit.Assert.assertEquals;
import org.junit.Test;
import org.junit.Before;
import java.util.Arrays;

public class CarrinhoTestParcial {

  private Carrinho carrinho;
  private Produto produto;

  @Before
  public void setup() {
    carrinho = new Carrinho();
    produto  = new Produto("Mass Effect 3", 50);
  }

  @Test
  public void testAdicaoDeProduto() {
    carrinho.incluir(produto);
    assertEquals(Arrays.asList(produto), carrinho.getProdutos());
  }

  @Test
  public void testRemocaoDeProduto() {
    carrinho.incluir(produto);
    carrinho.remover(produto);
    assertEquals(0, carrinho.getProdutos().size());
  }

  @Test
  public void testAlteracaoDeQuantidadeDoProduto() {
    carrinho.incluir(produto);
    assertEquals(1, carrinho.getQuantidade(produto));
    carrinho.alterarQuantidade(produto, 2);
    assertEquals(2, carrinho.getQuantidade(produto));
  }

  @Test
  public void testCalculoDePrecoTotal(){
    carrinho.incluir(produto);
    Produto outro_produto = new Produto("Bioshock", 40);
    carrinho.incluir(outro_produto);
    carrinho.alterarQuantidade(outro_produto, 2);
    assertEquals(130, carrinho.getTotal(), 0.01);
  }
}
