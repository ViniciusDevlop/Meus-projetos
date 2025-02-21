public class Pessoa {
    String nome;
    int idade;
    double renda;

    void imprimir(){
        //void quer dizer que o void retorna nulo, os métodos retornam
        System.out.println("\nnome: " + nome + "\nIdade: " + idade + "\nRenda: " + renda + "\nReajuste: "+ reajuste());
    }

    double reajuste(){
        //System.out.println("Valor do reajuste: " + (renda * 15)/100);
       return (renda *15/100);
    }










}
