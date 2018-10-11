import static org.junit.Assert.assertEquals;
import org.junit.Test;
import org.junit.Before;

import java.util.Date;
import java.util.Arrays;
import java.text.SimpleDateFormat;

public class CarrinhoTest {

  private Carrinho carrinho;
  private Produto produto;
  private Produto outro_produto;
  private String data;

  @Before
  public void setup() {
    carrinho = new Carrinho();
    produto = new Produto("Mass Effect 3", 50);
    outro_produto = new Produto("Bioshock 2", 40);
    data = new SimpleDateFormat("dd/MM/yyyy HH:mm").format(new Date());
  }

  @Test
  public void test_adicao_de_produto() {
    carrinho.incluir(produto);
    assertEquals(Arrays.asList(produto), carrinho.getProdutos());
  }

  @Test
  public void test_remocao_de_produto() {
    carrinho.incluir(produto);
    carrinho.remover(produto);

    assertEquals(0, carrinho.getProdutos().size());
  }

  @Test
  public void test_se_produtos_sao_unicos() {
     adiciona_10_produtos_iguais();
     assertEquals(Arrays.asList(produto), carrinho.getProdutos());
  }

  @Test
  public void test_aumento_de_quantidade_do_produto() {
    carrinho.incluir(produto);
    assertEquals(carrinho.getProdutos().size(), 1);

    carrinho.alterarQuantidade(produto, 2);
    assertEquals(2, carrinho.getQuantidade(produto));
  }

  @Test
  public void test_quantidade_de_um_mesmo_produto_adicionado_novamente(){
    adiciona_10_produtos_iguais();
    assertEquals(10, carrinho.getQuantidade(produto));
  }

  @Test
  public void test_diminuicao_de_quantidade_de_produtos(){
    adiciona_10_produtos_iguais();
    carrinho.alterarQuantidade(produto, 5);
    assertEquals(5, carrinho.getQuantidade(produto));
  }

  @Test
  public void test_calculo_de_preco_total(){
    carrinho.incluir(produto);
    carrinho.incluir(outro_produto);
    carrinho.alterarQuantidade(outro_produto, 2);

    assertEquals(130, carrinho.getTotal(), 0.0000000001);
  }

  @Test
  public void test_impressao_do_relatorio_com_data_inclusao_de_cada_produto(){
    carrinho.incluir(produto);
    carrinho.incluir(outro_produto);
    String relatorio = "Mass Effect 3 adicionado em "+data+", Bioshock 2 adicionado em "+data;
    assertEquals(relatorio, carrinho.getRelatorio());
  }

  @Test
  public void test_nomes_no_relatorio_atualizam_de_acordo_com_nomes_nos_produtos(){
    carrinho.incluir(produto);
    carrinho.incluir(outro_produto);
    produto.setNome("Mass Effect");
    outro_produto.setNome("Bioshock");
    String relatorio = "Mass Effect adicionado em "+data+", Bioshock adicionado em "+data;
    assertEquals(relatorio, carrinho.getRelatorio());
  }

  private void adiciona_10_produtos_iguais(){
    for(int i = 0; i < 10; i++){
      carrinho.incluir(produto);
    }
  }

}
