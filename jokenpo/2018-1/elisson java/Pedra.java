public class Pedra extends Opcao {
	public boolean vence (Opcao opcao) {
		Tesoura tesoura = new Tesoura();
		return opcao.getClass().equals(tesoura.getClass());
	}
}