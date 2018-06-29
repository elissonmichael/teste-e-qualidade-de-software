import java.util.ArrayList;

abstract class Opcao {
	public static Opcao doNumero(int numero) {
		ArrayList<Opcao> opcoes = new ArrayList<Opcao>();
		opcoes.add(new Pedra());
		opcoes.add(new Papel());
		opcoes.add(new Tesoura());
		return opcoes.get(numero - 1);
	}
	
	public boolean vence (Opcao opcao) {
		return this.vence(opcao);
	}
}