public class Calçado extends Vestuario{
    private String materialSola, materialParteSuperior, materialInterno;

    public Calçado(int c, String d, double v, String n, String co, String t, String ms,
                   String mps, String mi) {
        super(c, d, v, n, co, t);
        //this.materialSola = materialSola;
        //this.materialParteSuperior = materialParteSuperior;
        //this.materialInterno = materialInterno;
        this.setMaterialSola(ms);
        this.setMaterialParteSuperior(mps);
        this.setMaterialInterno(mi);
    }

    public String getMaterialSola() {
        return materialSola;
    }

    public void setMaterialSola(String argMS) {
        if(argMS.length() >= 2){
            this.materialSola = argMS;
        }
        else{
            System.out.println("Material da sola inválido");
        }
    }

    public String getMaterialParteSuperior() {
        return materialParteSuperior;
    }

    public void setMaterialParteSuperior(String argMPS) {
        if(argMPS.length() >= 2){
            this.materialParteSuperior = argMPS;
        }
        else{
            System.out.println("Material da parte superior inválido");
        }
    }

    public String getMaterialInterno() {
        return materialInterno;
    }

    public void setMaterialInterno(String argMI) {
        if(argMI.length() >= 2){
            this.materialInterno = argMI;
        }
        else{
            System.out.println("Material da parte interna inválido");
        }
    }
//a diferença entre && e || é que o && precisa que as duas condições sejam verdadeiras enquanto  a || só precisa que uma seja verdadeira.
    public String print(){
        String retorno;
        retorno = super.print();
        retorno = retorno + "\nMaterial da Sola: " + this.materialSola +
                "\nMaterial da parte superior: " + this.materialParteSuperior +
                "\nMaterial Interno: " + this.materialInterno;
        return retorno;
    }
}
