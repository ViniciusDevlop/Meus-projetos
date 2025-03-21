public class Triangulo {
  private double base;
  private double altura;

  // Construtor padrão (sem parâmetros)
    public Triangulo() {
    }

    // Construtor padrão (com parâmetros)
    public Triangulo(double base, double altura) {
        this.base = base;
        this.altura = altura;

    }
public double getBase(){
  return base;
}
public void setBase(double base){
   this.base = base;
}
public double getAltura(){
    return altura;
}
public void setAltura(double altura){
    this.altura= altura;
}

public double calcularArea(){
   return base * altura/2;
}
    // Metodo para imprimir os dados
    public void imprimeDados() {
        System.out.println("Base: " + base);
        System.out.println("Altura: " + altura);
        System.out.println("Área: " + calcularArea());
    }
}
