import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;
import java.util.stream.IntStream;

import junit.framework.TestCase;

class Produto {

	private String nome;
	private Double valor;

	public Produto(String nome, Double valor) {
		this.nome = nome;
		this.valor = valor;
	}

	public String getNome() {
		return nome;
	}

	public Double getValor() {
		return valor;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public void setValor(Double valor) {
		this.valor = valor;
	}

}

class Carrinho {

	private final List<ItemCarrinho> itens;
	private final List<String> relatorio;

	public Carrinho() {
		itens = new ArrayList<>();
		relatorio = new ArrayList<>();
	}

	public void incluir(Produto produto) {
		Optional<ItemCarrinho> itemOpcional = getItemOptional(produto);
		if (itemOpcional.isPresent()) {
			ItemCarrinho itemCarrinho = itemOpcional.get();
			itemCarrinho.setQuantidade(itemCarrinho.getQuantidade() + 1);
		} else {
			itens.add(new ItemCarrinho(produto, 1));
		}

		String data = new SimpleDateFormat("dd/MM/yyyy HH:mm").format(new Date());
		relatorio.add(String.format("%s adicionado em %s", produto.getNome(), data));
	}

	public void remover(Produto produto) {
		itens.removeIf(item -> item.getProduto().equals(produto));
	}

	public int quantidade(Produto produto) {
		return itens.stream().filter(item -> item.getProduto().equals(produto)).mapToInt(ItemCarrinho::getQuantidade)
				.sum();
	}

	public void alterar_quantidade(Produto produto, int quantidade) {
		Optional<ItemCarrinho> itemOpcional = getItemOptional(produto);
		if (itemOpcional.isPresent()) {
			itemOpcional.get().setQuantidade(quantidade);
		}
	}

	public List<Produto> getProdutos() {
		return itens.stream().map(ItemCarrinho::getProduto).collect(Collectors.toList());
	}

	private Optional<ItemCarrinho> getItemOptional(Produto produto) {
		return itens.stream().filter(item -> item.getProduto().equals(produto)).findFirst();
	}

	public Double total() {
		return itens.stream().mapToDouble(ItemCarrinho::getTotal).sum();
	}

	public String relatorio() {
		return this.relatorio.stream().collect(Collectors.joining(", "));
	}

}

class ItemCarrinho {

	private Produto produto;

	private Integer quantidade;

	public ItemCarrinho(Produto produto, Integer quantidade) {
		this.produto = produto;
		this.quantidade = quantidade;
	}

	public Produto getProduto() {
		return produto;
	}

	public Integer getQuantidade() {
		return quantidade;
	}

	public void setQuantidade(Integer quantidade) {
		this.quantidade = quantidade;
	}

	public Double getTotal() {
		return this.produto.getValor() * quantidade;
	}

}

public class EduardoCarrinhoComprasTest extends TestCase {

	private Produto produto;
	private Produto bioshock;
	private Carrinho carrinho;

	@Override
	public void setUp() {
		this.produto = new Produto("Mass Effect 3", 50.0);
		this.bioshock = new Produto("BioShock 2", 40.0);
		this.carrinho = new Carrinho();
	}

	public void adiciona_10_produtos_iguais() {
		IntStream.range(0, 10).forEachOrdered(i -> {
			this.carrinho.incluir(this.produto);
		});
	}

	public void test_adicao_de_produto() {
		this.carrinho.incluir(this.produto);
		assertEquals(Arrays.asList(this.produto), this.carrinho.getProdutos());
	}

	public void test_remocao_de_produto() {
		this.carrinho.incluir(this.produto);
		this.carrinho.remover(this.produto);
		assertEquals(0, this.carrinho.getProdutos().size());
	}

	public void test_se_produtos_sao_unicos() {
		adiciona_10_produtos_iguais();
		assertEquals(Arrays.asList(this.produto), this.carrinho.getProdutos());
	}

	public void test_aumento_de_quantidade_do_produto() {
		this.carrinho.incluir(this.produto);
		assertEquals(1, this.carrinho.quantidade(this.produto));
		this.carrinho.alterar_quantidade(this.produto, 2);
		assertEquals(2, this.carrinho.quantidade(this.produto));
	}

	public void test_quantidade_de_um_mesmo_produto_adicionado_novamente() {
		adiciona_10_produtos_iguais();
		assertEquals(10, this.carrinho.quantidade(this.produto));
	}

	public void test_diminuicao_de_quantidade_de_produtos() {
		adiciona_10_produtos_iguais();
		this.carrinho.alterar_quantidade(this.produto, 5);
		assertEquals(5, this.carrinho.quantidade(this.produto));
	}

	public void test_calculo_de_preco_total() {
		this.carrinho.incluir(this.produto);
		this.carrinho.incluir(this.bioshock);
		this.carrinho.alterar_quantidade(this.bioshock, 2);
		assertEquals(130.0, this.carrinho.total());
	}

	public void test_impressao_do_relatorio_com_data_inclusao_de_cada_produto() {
		this.carrinho.incluir(this.produto);
		this.carrinho.incluir(this.bioshock);
		String data = new SimpleDateFormat("dd/MM/yyyy HH:mm").format(new Date());
		String relatorio = String.format("Mass Effect 3 adicionado em %s, BioShock 2 adicionado em %s", data, data);
		assertEquals(relatorio, this.carrinho.relatorio());
	}

}
