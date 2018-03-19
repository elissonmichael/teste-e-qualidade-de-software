import java.util.Collection;
import java.util.ArrayList;
import java.util.Map;
import java.util.List;
import java.util.LinkedHashMap;
import java.util.Date;
import java.text.SimpleDateFormat;
import java.util.stream.Collectors;

public class Carrinho {
	
	private Map<Produto, Integer> produtos;
	private List<String> log;

	public Carrinho(){
		this.produtos = new LinkedHashMap<>();
		this.log = new ArrayList<>();
	}

	public Collection<Produto> getProdutos(){
		return new ArrayList(this.produtos.keySet());
	}

	public void incluir(Produto produto){
		if(this.produtos.containsKey(produto)){
			this.produtos.put(produto, this.produtos.get(produto) + 1);	
		}else{
			this.produtos.put(produto, 1);	
		}

		String agora = new SimpleDateFormat("dd/MM/yyyy HH:mm").format(new Date());

		this.log.add(produto.getNome() + " adicionado em " + agora);
	}

	public void remover(Produto produto){
		this.produtos.remove(produto);
	}

	public void alterarQuantidade(Produto produto, int quantidade){
		this.produtos.put(produto, quantidade);
	}

	public int getQuantidade(Produto produto){
		return this.produtos.get(produto);
	}

	public float getTotal(){
		float total = 0f;

		for (Map.Entry<Produto, Integer> entry : produtos.entrySet()){

			total += entry.getKey().getPreco() * entry.getValue();
		}

		return total;
	}

	public String getRelatorio(){
		return log.stream().collect(Collectors.joining(", "));//java 8
	}
}