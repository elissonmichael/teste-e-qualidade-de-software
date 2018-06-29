import java.util.Scanner;

public class Main {
	public static void main(String[] args) {
		Scanner input = new Scanner(System.in);
		boolean repetir = true;
        while (repetir) {
    		System.out.println("1 - Pedra");
    		System.out.println("2 - Papel");
    		System.out.println("3 - Tesoura");
    		Opcao jogador1 = Opcao.doNumero(input.nextInt());
    		Opcao jogador2 = Opcao.doNumero(input.nextInt());
    		System.out.println(new Jokenpo(jogador1, jogador2).vencedor());
    		System.out.println("Jogar Novamente? [s/n]");	
    		repetir = input.next().equalsIgnoreCase("s");
        }
        input.close();
	}
}
