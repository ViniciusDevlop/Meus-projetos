public class Eletronico extends Produto {
    private int voltagem;

    public Eletronico(int c, String d, double v, int vo) {
        super(c, d, v);
        this.voltagem = vo;
    }
//metodo de acesso get e set

    //&& para que eu tenha uma resposta verdadeira eu tenho que ter as duas verdadeiras
    /*diferente da || que se tiver um positivo já é o suficiente para rodar*/
    /*se o atributo for protegido pode ser acessado pela classe filha diferente do privado que só a classe mãe consegue acessar*/

    public int getVoltagem() {
        return voltagem;
    }

    public void setVoltagem(int argVoltagem) {
        if (argVoltagem == 110 || argVoltagem == 220) {

        } else {
            System.out.println("Voltagem inválida tá maluco nengue!");
        }
        this.voltagem = argVoltagem;
    }
   public String print(){
        /* String retorno;
        retorno = "Codigo: " + this.getCodigo() +
                "\nDescrição: " + this.getDescricao()+
                "\nValor: "+ this.getValor() +
                "\nVoltagem: " + this.getVoltagem();
        return retorno;
        */
       String retorno;
       retorno = super.print();
       retorno = retorno +"\nVoltagem: " + this.voltagem;
       return retorno;
   }
 }
