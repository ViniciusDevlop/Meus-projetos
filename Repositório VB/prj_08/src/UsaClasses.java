public class UsaClasses {
    public static void main(String[] args) {
        Filho f = new Filho();
        f.imprimeFilho();
    }
}
//pegou o filho como construtor vazio  quando defino construtores que recebem coisas para eu gerar objeto da parte pai
//se a classe pai pede algo tenho que mandar pelo construtor  o objeto gerado no filho executado pelo pai
//cria primeiro a classe pai para depois criando as classes filhas porque elas dependem da herança do pai.