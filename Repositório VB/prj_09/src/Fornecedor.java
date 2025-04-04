public class Fornecedor extends Pessoa {
    private double valorCompra;

    public Fornecedor(String n, String f, double vc) {
        super(n, f);
        //this.valorCompra= valorCompra;
        this.setValorCompra(vc);
    }

    public double getValorCompra() {
        return valorCompra;
    }

    public void setValorCompra(double valorCompra) {
        this.valorCompra = valorCompra;
    }
    public void print(){
        super.print();
        System.out.println("Valor da Compra: " + this.valorCompra);
    }
  public void calcularImposto(double imposto){
      System.out.println("Imposto: " + (this.valorCompra * imposto)/100);

    }
}

