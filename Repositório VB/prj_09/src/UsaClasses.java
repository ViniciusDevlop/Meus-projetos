import java.util.Arrays;

public class UsaClasses {
    public static void main(String[] args) {
        //Pessoa pessoa1= new Pessoa("Marcos","1111-1111");
        //pessoa1.print();
     Cliente cliente1 = new Cliente("Kleiton","2222-2222",1000);
     cliente1.print();
        System.out.println("Juros: "+ cliente1.calcularJuros(10));

     Fornecedor fornecedor1 = new Fornecedor("Marcondes","3333-3333", 2000);
     fornecedor1.print();
     fornecedor1.calcularImposto(15);
    }
}
//sempre que falar sobre sobrescrita dando o comportamento
//sobrecarga mesmo nome assinaturas diferentes uso para classe mãe