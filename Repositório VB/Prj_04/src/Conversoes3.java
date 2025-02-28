import java.util.Scanner;

public class Conversoes3 {
    public static void main(String[] args) {
        Scanner obj_leia = new Scanner(System.in);
        //entrada
        System.out.println("Digite a nota A1: ");
        double notaA1 = obj_leia.nextDouble();

        System.out.println("Digite a nota A2: ");
        double notaA2 = obj_leia.nextDouble();

        //processamento
        double resultado = notaA1 + notaA2;
        //saida
        System.out.println("A media: "+resultado);
    }
}