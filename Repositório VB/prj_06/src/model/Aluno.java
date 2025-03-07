package model;

import javax.swing.*;

public class Aluno {
    private String nome;
    private String rgm;
    private int idade;
    private double nota1;
    private double nota2;

    public double calcularMedia(double pN1, double pN2){
        double media = (pN1 + pN2) /2;
        return media;
    }

    public boolean verificarAprovacao(double pMedia){
        if(pMedia >= 6){
            return true;
        }
        else{
            return false;
        }
    }

    public void inserirNota1(double nota){
        if(nota >= 0 && nota <=10){
            this.nota1 = nota;
        }
        else{
            System.out.println("Nota com valor errado!!!");
        }
    }

    public double pegarNota1(){
        return this.nota1;
    }

    public void inserirNota2(double nota){
        if(nota >= 0 && nota <=10){
            this.nota2 = nota;
        }
        else{
            System.out.println("Nota com valor errado!!!");
        }
    }

    public double pegarNota2(){
        return this.nota2;
    }

   public int pegarIdade(){
        return this.idade;
   }


    public void pegarIdade (int idade){
        if (idade > 100){
            this.idade = idade;
        }
        else{
            JOptionPane.showMessageDialog(null,"Tá querendo enganar quem meu filho?");
        }
    }

    public String getNome(){
        return nome;
    }

    public void setNome(String nome){
        if (nome.length() >=3 ){
            this.nome = nome;
        }
        else{
             // a única que coisa que eu tinha mudado era por Message no lugar do Input
            JOptionPane.showInputDialog(null,"Coloca um nome válido");
        }
    }
    public String getRgm(){
        return rgm;
    }

    public void setRgm(String rgm){
        if (rgm.length() ==3 ){
            this.rgm = rgm;
        }
        else{
            // a única que coisa que eu tinha mudado era por Message no lugar do Input
            JOptionPane.showInputDialog(null,"Coloca um rgm válido");
        }
    }

  public String imprimirdados(){

      return "Nome:" + this.nome +
       "\nRGM:" + this.rgm +
       "\nNota1 " + this.nota1 +
       "\nNota2" + this.nota2+
       "\nMédia" +this.calcularMedia(this.nota1,this.nota2 )+
       "\nStatus" + (this.verificarAprovacao(this.calcularMedia(this.nota1,this.nota2 ))?"Aprovado":"Reprovado");

  }
}
