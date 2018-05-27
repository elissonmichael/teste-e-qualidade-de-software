public class Jokenpo {
	public Opcao opcao1;
	public Opcao opcao2;
	
	Jokenpo(Opcao opcao1, Opcao opcao2){
		this.opcao1 = opcao1;
		this.opcao2 = opcao2;
	}
	
	private boolean empate() {
		return !opcao1.vence(opcao2) && !opcao2.vence(opcao1);
	}
	
	public String vencedor() {
		if(empate()) return "Empate";
		if(opcao1.vence(opcao2)) {
			return "Jogador 1 Venceu";
		} else {
			return "Jogador 2 Venceu";
		}
	}
}
