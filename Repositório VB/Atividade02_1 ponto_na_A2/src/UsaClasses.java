import java.util.Scanner;
public class UsaClasses {
    public static void main(String[] args) {
        Scanner ent = new Scanner(System.in);

        System.out.println("Digite o código do imóvel: ");
        int codigo = ent.nextInt();
        ent.nextLine(); //pula a linha

        System.out.println("Digite a descrição do imóvel");
        String descricao = ent.nextLine();

        System.out.println("Digite a metragem do imóvel: ");
        double metragem = ent.nextDouble();
        ent.nextLine();

     Imovel imovel = new Imovel (codigo,descricao,metragem);

     System.out.println("Digite o código do bairro (1 a 4): ");
     int codigoBairro =ent.nextInt();

     imovel.calcularValor(codigoBairro);

        System.out.println("\n--- Informações do Imóvel ---");
        System.out.println(imovel.Imprimir());

        ent.close();
    }
}
