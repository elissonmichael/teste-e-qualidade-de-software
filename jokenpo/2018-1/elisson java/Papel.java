public class Papel extends Opcao{
	public boolean vence (Opcao opcao) {
		Pedra pedra = new Pedra();
		return opcao.getClass().equals(pedra.getClass());
	}
}
