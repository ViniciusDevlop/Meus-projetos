public class Pessoa {
    private String nome;
    private String telefone;
    public Pessoa(String n, String f) {
        //this.nome = nome;
        //this.telefone= telefone;
        this.setNome(n);
        this.setTelefone(f);
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }

 public void print(){

        System.out.println("Nome: " + this.nome +
             "\nTelefone: " + this.telefone);
 }

}


