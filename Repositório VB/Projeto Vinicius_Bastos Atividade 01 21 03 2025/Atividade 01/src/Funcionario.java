public class Funcionario {
 private int cracha;
 private double salario;
 private String cargo;

 // Construtor sem parâmetros (vazio)
 public Funcionario() {
  this.cargo = "assistente";
 }

 public Funcionario(int cracha, double salario, String cargo) {
  this.cracha = cracha;
  this.salario = salario;
  this.cargo = cargo;
 }

 //metodo para calcular aumento por porcentagem
 public void calculaAumento(double porcentagem) {
  this.salario += this.salario * (porcentagem / 100);
 }

 // Metodo para calcular aumento por tempo
 public void calculaAumento(int tempo) {
  this.salario += tempo * 150.0;
 }

 public int getCracha() {
  return cracha;
 }

 public void setCracha(int cracha) {
  this.cracha = cracha;
 }

 public double getSalario() {
  return salario;
 }

 public void setSalario(double salario) {
  this.salario = salario;
 }

 public String getCargo() {
  return cargo;
 }

 public void setCargo(String cargo) {
  this.cargo = cargo;
 }
}
