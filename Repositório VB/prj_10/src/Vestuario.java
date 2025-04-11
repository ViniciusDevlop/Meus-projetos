public class Vestuario extends Produto{
    private String nome, cor, tamanho;

    public Vestuario(int c, String d, double v, String n, String co, String t) {
        super(c, d, v);
        //this.nome = nome;
        //this.cor = cor;
        //this.tamanho = tamanho;
        this.setNome(n);
        this.setCor(co);
        this.setTamanho(t);
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String argNome) {
        if(argNome.length() >= 3){
            this.nome = argNome;
        }
        else{
            System.out.println("Nome inválido");
        }
    }

    public String getCor() {
        return cor;
    }

    public void setCor(String argCor) {
        if(argCor.length() >= 3){
            this.cor = argCor;
        }
        else{
            System.out.println("Cor inválida");
        }
    }

    public String getTamanho() {
        return tamanho;
    }

    public void setTamanho(String argTamanho) {
        if(argTamanho.length() >= 1){
            this.tamanho = argTamanho;
        }
        else{
            System.out.println("Cor inválida");
        }
    }

    public String print(){
        String retorno;
        retorno = super.print();
        retorno = retorno + "\nNome: " + this.nome +
                "\nCor: " + this.cor +
                "\nTamanho: " + this.tamanho;
        return retorno;
    }
}