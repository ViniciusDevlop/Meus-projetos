public class Main {
    public static void main(String[] args) {
        Pessoa obj_pessoa1 = new Pessoa();
        Pessoa obj_pessoa2 = new Pessoa();

        obj_pessoa1.nome = "Francesco";
        obj_pessoa1.idade = 41;
        obj_pessoa1.renda = 600.00;

        obj_pessoa2.nome = "Samuel";
        obj_pessoa2.idade = 20;
        obj_pessoa2.renda = 6000.00;

        double reajuste = (obj_pessoa1.renda * 15)/100;
        System.out.println();

        obj_pessoa1.imprimir();
        obj_pessoa2.imprimir();

        //obj_pessoa1.reajuste();
        //obj_pessoa2.reajuste();


    }
}
