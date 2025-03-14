public class Boletim {
    private double n1;
    private double n2;

    public Boletim(double n1, double n2){
        this.setN1(n1);
        this.setN2(n2);
    }

    public Boletim(double n1){
        //this.n1 = n1;
        this.setN1(n1);
    }
    //quando não crio construtor o Java gera um vazio
   //set controla a geração do conteúdo
    //private double media;
    // os códigos em anotação foram os primeiros á serem usados
    public double getN1() {
        return n1;
    }

    public void setN1(double n1) {
        if (n1 >= 0 && n1 <= 10) {
            this.n1 = n1;
        } else {
            System.out.println("Tá tentando enganar quem meu filho? ");
        }
    }

    public double getN2() {
        return n2;
    }

    public void setN2(double n2) {
        if (n2 >= 0 && n2 <= 10) {
            this.n2 = n2;
        } else {
            System.out.println("Coloca uma nota válida! ");
        }
    }

    //public double getMedia() {
    //   return media;
    // }

    // public void setMedia(double media) {
    // this.media = media;
    //}

    public double calcularMedia(double n1, double n2) {
        double resultado = (n1 + n2) / 2;
        return resultado;
    }
    //exemplos de sobrecarga no metodo calcular media
    //public double calcularMedia(double n1){
       // return n1;
    //}

   // public double calcularMedia(double n1,double n2,double n3){
    // double resultado = (n1 + n2 + n3) / 3;
    //return n1;
   // }


    public String verificarConceito(double argMedia) {
        if (argMedia >= 8) {
            return "A";
        } else if (argMedia >= 6) {
            return "B";
        } else if (argMedia >= 4) {
            return "C";
        } else if (argMedia >= 2) {
            return "D";
        } else {
            return "E";
        }


//get retornará um valor, seja ele String, int ,double etc.
//set não retorna, pois altera o atributo
//void sempre retorna nulo


    }
}