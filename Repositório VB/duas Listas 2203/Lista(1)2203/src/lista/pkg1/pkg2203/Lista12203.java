/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package lista.pkg1.pkg2203;

import java.util.ArrayList;
import java.util.List;
import java.util.Collections;
/**
 *
 * @author VINICIUSOLIVEIRABAST
 */
public class Lista12203 {

    public static void main(String[] args) {
        List<String> listaMasculinaCresc = new ArrayList<>();
        List<String> listaMasculinaDecresc = new ArrayList<>();
        List<String> listaFemininaCresc = new ArrayList<>();
        List<String> listaFemininaDecresc = new ArrayList<>();

        // Arrays dos nomes
        String[] nomesMasculinos = {
            "Gabriel", "Davi", "Miguel", "Arthur", "Matheus", "Lucas",
            "Guilherme", "Pedro", "Gustavo", "Felipe", "Rafael", "Enzo",
            "Nicolas", "Joao Pedro", "Pedro Henrique", "Bernardo", "Vitor",
            "Kaua", "Eduardo", "Henrique", "Leonardo", "Samuel"
        };

        String[] nomesFemininos = {
            "Julia", "Sophia", "Isabela", "Maria Eduarda", "Giovanna",
            "Beatriz", "Manuela", "Rafaela", "Mariana", "Gabriela",
            "Yasmin", "Laura", "Yasmin", "Luiza", "Ana Clara", "Lara",
            "Maria Clara", "Leticia", "Alice", "Isabelle", "Maria Luiza",
            "Valentina"
        };

        // Adicionar nomes masculinos às listas
        for (String nome : nomesMasculinos) {
            listaMasculinaCresc.add(nome);
            listaMasculinaDecresc.add(nome);
        }

        // Adicionar nomes femininos às listas
        for (String nome : nomesFemininos) {
            listaFemininaCresc.add(nome);
            listaFemininaDecresc.add(nome);
        }

        // Ordenar as listas
        Collections.sort(listaMasculinaCresc);
        Collections.sort(listaMasculinaDecresc, Collections.reverseOrder());
        Collections.sort(listaFemininaCresc);
        Collections.sort(listaFemininaDecresc, Collections.reverseOrder());

        // Imprimir as listas
        System.out.println("Lista de nomes masculinos em ordem crescente:");
        for (String nome : listaMasculinaCresc) {
            System.out.println(nome);
        }

        System.out.println("\nLista de nomes masculinos em ordem decrescente:");
        for (String nome : listaMasculinaDecresc) {
            System.out.println(nome);
        }

        System.out.println("\nLista de nomes femininos em ordem crescente:");
        for (String nome : listaFemininaCresc) {
            System.out.println(nome);
        }

        System.out.println("\nLista de nomes femininos em ordem decrescente:");
        for (String nome : listaFemininaDecresc) {
            System.out.println(nome);
        }
    }
}