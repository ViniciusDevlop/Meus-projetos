/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package main;

/**
 *
 * @author VINICIUSOLIVEIRABAST
 */
public class Main {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Vendedor vendedor1= new Vendedor (2000,3000, "Marcos", 2);
        Vendedor vendedor2= new Vendedor (3000, 4000, "Maria", 1);
    
    vendedor1.imprimirDados();
    vendedor1.calcularSalario();
    System.out.println("Salário com comissão e desconto: " + vendedor1.getSalario());
    
    vendedor2.imprimirDados();
    vendedor2.calcularSalario();
    System.out.println("Salário com comissão e desconto: " + vendedor2.getSalario());
    
    
    
    
    
    
    }
    
}
