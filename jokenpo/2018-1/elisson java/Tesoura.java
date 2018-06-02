public class Tesoura extends Opcao{
	public boolean vence (Opcao opcao) {
		Papel papel = new Papel();
		return opcao.getClass().equals(papel.getClass());
	}
}
