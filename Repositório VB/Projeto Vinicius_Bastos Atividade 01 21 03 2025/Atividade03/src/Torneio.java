public class Torneio {
    private String nome;
    private int idade;

    public Torneio(String nome, int idade) {
        this.nome = nome;
        this.idade = idade;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public int getIdade() {
        return idade;
    }

    public void setIdade(int idade) {
        this.idade = idade;
    }

    public String verificarCategoria() {
        if (idade >= 5 && idade <= 7) {
            return "Infantil";
        } else if (idade >= 8 && idade <= 10) {
            return "Juvenil";
        } else if (idade >= 11 && idade <= 15) {
            return "Adolescente";
        } else if (idade >= 16 && idade <= 30) {
            return "Adulto";
        } else {
            return "Senior";
        }
    }

    public void ImprimirDados() {
        System.out.println("Nome: " + nome);
        System.out.println("Idade: " + idade);
        System.out.println("Categoria: " + verificarCategoria());
    }
}









  
}
