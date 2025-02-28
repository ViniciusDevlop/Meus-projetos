import java.util.Scanner;

public class Entrada {
    public static void main(String[] args) {
        Scanner obj_leia = new Scanner(System.in);

        //entrada
        System.out.println("Digite um nome: ");
        String nome = obj_leia.nextLine();

        System.out.println("Digite um float: ");
        float numero1 = obj_leia.nextFloat();

        System.out.println("Digite um double: ");
        double numero2 = obj_leia.nextDouble();

        System.out.println("Digite um inteiro: ");
        int numero3 = obj_leia.nextInt();

        System.out.println("Digite um byte: ");
        byte numero4 = obj_leia.nextByte();

        System.out.println("Digite um long: ");
        long numero5 = obj_leia.nextLong();

        System.out.println("Digite um booleano: ");
        boolean flag = obj_leia.nextBoolean();

        //processamento

        //saída
        System.out.println("O nome digitado foi: ............ "+nome);
        System.out.println("O float digitado foi: ........... "+numero1);
        System.out.println("O double digitado foi: .......... "+numero2);
        System.out.println("O int digitado foi: ............. "+numero3);
        System.out.println("O byte digitado foi: ............ "+numero4);
        System.out.println("O long digitado foi: ............ "+numero5);
        System.out.println("O boolean digitado foi: ......... "+flag);
    }
}