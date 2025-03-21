import java.util.Scanner;
public class Main {
    Scanner ent = new Scanner (System.in);
public static void main(String[] args) {
    Main main = new Main();
    Triangulo Triangulo1 = new Triangulo(5.0,8.0);

        System.out.println ("Dados do Triangulo1: ");
        Triangulo1.imprimeDados();


        Triangulo Triangulo2 = new Triangulo();
        System.out.println("Digite a Base do Triangulo 2: ");
        double base= main.ent.nextDouble();

        System.out.println("Digite a altura do Triangulo 2: ");
        double altura = main.ent.nextDouble();
 
        Triangulo2.setBase(base);
        Triangulo2.setAltura(altura);

        System.out.println("Dados do Triangulo2: ");
        Triangulo2.imprimeDados();

        main.ent.close(); 
 }
}


























    }


}
