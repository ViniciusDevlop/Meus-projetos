public class Cliente extends Pessoa{
    private double valorDivida;

    public Cliente(String n, String f, double v) {
        super(n, f);
        //this.valorDivida = valorDivida;
        this.setValorDivida(v);

    }

    public double getValorDivida() {
        return valorDivida;
    }

    public void setValorDivida(double valorDivida) {
        this.valorDivida = valorDivida;
    }

    public void print(){
        super.print();
       System.out.println("Valor da Dívida: " + this.valorDivida);
    }
    public double  calcularJuros(double tx){
        return (this.valorDivida * tx)/100;

    }
}

//super se refere á super classe