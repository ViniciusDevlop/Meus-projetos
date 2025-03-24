/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package main;

/**
 *
 * @author VINICIUSOLIVEIRABAST
*/
public class Vendedor {
    
private float vendas; 
private float salario;
private String nome;
private int falta;

public Vendedor (float vendas, float salario, String nome, int falta){
 this.vendas = vendas;
 this.salario = salario ;
 this.nome = nome ;
 this.falta = falta ;
}

 public float GetVendas(){
  return vendas;
 } 
// toda vez que for fazer o set é importante colocar como void aí dentro do parênteses que vai colocar o dado inteiro
 public void SetVendas (float vendas){
  this.vendas = vendas;
 }

public float getSalario(){
 return salario;
}
public void SetSalario(float salario){
this.salario = salario; 
}

public String GetNome(){
return nome;
}

public void SetNome(String nome){
this.nome = nome;
}

public int GetFalta(){
    return falta;
}

public void SetFalta(int falta){

this.falta = falta;
}

public void imprimirDados(){
    System.out.println("Nome "+ nome);
    System.out.println("Vendas: " + vendas);
    System.out.println("Salario: " + salario);
    System.out.println("Falta: " + falta);
}  
 public void calcularSalario() {
        float comissao = calcularComissao();
        float desconto = descontoFalta();
        salario = salario + comissao - desconto;
    }

public float calcularComissao(){
 if (vendas >=1000 && vendas < 2000 ){
     return vendas * 0.10f;
 }
 else if (vendas >= 2000){
   return vendas * 0.15f;
 } 
 else{
   return 0;
 }
}
public float descontoFalta(){
 return (salario/30)*falta;
    }
}
