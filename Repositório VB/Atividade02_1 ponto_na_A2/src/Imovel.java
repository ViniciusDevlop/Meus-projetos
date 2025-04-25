public class Imovel {
    private int codigo;
    private String descricao;
    private double metragem;
    private double valor;

    public Imovel(int codigo, String descricao, double metragem) {
        if (codigo <= 0) {
            System.out.println("Código inválido. Deve ser positivo.");
            this.codigo = 0;
        }
        else {
            this.codigo = codigo;
        }
        if (descricao == null || descricao.length() < 5){
            System.out.println("Coloque uma descrição válida! Deve ter no mínimo 5 caracteres");
            this.descricao = "";
        }
        else {
            this.descricao = descricao;
        }
        if (metragem <=10 ){
            System.out.println("Metragem incorreta! A metragem deve ter no mínimo 10 metros ");
            this.metragem = 0;
        }
        else{
         this.metragem = metragem;
        }
        this.valor = 0;
    }

    public int getCodigo() {
        return codigo;
    }

    public void setCodigo(int codigo) {
        if (codigo <= 0) {
            System.out.println("Código inválido. Deve ser positivo.");
            this.codigo = 0;
        } else {
            this.codigo = codigo;
        }
    }
    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        if (descricao == null || descricao.length() < 5){
            System.out.println("Coloque uma descrição válida! Deve ter no mínimo 5 caracteres");
            this.descricao = "";
        }
        else {
            this.descricao = descricao;
        }
    }

    public double getMetragem() {
        return metragem;
    }

    public void setMetragem(double metragem) {
        if (metragem <=10 ){
            System.out.println("Metragem incorreta! A metragem deve ter no mínimo 10 metros ");
            this.metragem = 0;
        }
        else{
            this.metragem = metragem;
        }
    }

    public double getValor() {
        return valor;
    }

    public void setValor(double valor) {
        if(valor >= 0 ) {
            this.valor = valor;
        }
        else{
            System.out.println("Valor inválido. Deve ser maior ou igual a zero");
        }
    }
  public void calcularValor(int bairro){
      double valorMetroQuadrado = 0;
      switch (bairro) {
          case 1:
          valorMetroQuadrado = 5000;
          break;
          case 2:
          valorMetroQuadrado = 6000;
          break;
          case 3:
          valorMetroQuadrado = 7000;
          break;
          case 4:
          valorMetroQuadrado = 8000;
          default:
              System.out.println("Bairro inválido o valor será 0.");
              this.valor = 0;
              return;
      }
      this.valor = this.metragem * valorMetroQuadrado;
  }
  public String Imprimir(){
        return "Código: " + this.codigo +
                "\nDescrição: " + this.descricao +
                "\nMetragem: " + this.metragem + "m²" +
                "\nValor: R$" + String.format("%.2f", this.valor);
    }
}
