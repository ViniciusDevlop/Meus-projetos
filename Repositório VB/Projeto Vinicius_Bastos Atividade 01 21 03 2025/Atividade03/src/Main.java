public class Main {
    public static void main(String[] args) {
        Torneio atleta1 = new Torneio("Joao", 10);
        Torneio atleta2 = new Torneio("Mario", 18);
        Torneio atleta3 = new Torneio("Marcos", 30);

        System.out.println("Dados do atleta1: ");
        atleta1.ImprimirDados();

        System.out.println("Dados do atleta2: ");
        atleta2.ImprimirDados();

        System.out.println("Dados do atleta3: ");
        atleta3.ImprimirDados();
    }
}
