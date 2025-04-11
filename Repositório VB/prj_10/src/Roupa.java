public class Roupa extends Vestuario{
    private String tecido;

    public String getTecido() {
        return tecido;
    }

    public Roupa(int c, String d, double v, String n, String co, String t, String te) {
        super(c, d, v, n, co, t);
        //this.tecido = tecido;
        this.setTecido(te);
    }

    public void setTecido(String argTecido) {
        if(argTecido.length() >= 3){
            this.tecido = argTecido;
        }
        else{
            System.out.println("Tecido inválido");
        }
    }

    public String print(){
        String retorno;
        retorno = super.print();
        retorno = retorno + "\nTecido: " + this.tecido;
        return retorno;
    }
}