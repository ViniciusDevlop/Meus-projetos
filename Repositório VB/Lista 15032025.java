Lista 15/03/2025

package lista;
import java.util.ArrayList;
import java.util.List;

public class Lista {
    public static void main(String[] args) {
        // Cria quatro listas de strings usando ArrayList
        List<String> listaDeNomes1 = new ArrayList<>();
        List<String> listaDeNomes2 = new ArrayList<>();
        List<String> listaDeNomes3 = new ArrayList<>();
        List<String> listaDeNomes4 = new ArrayList<>();

        // Array de nomes
        String[] nomes = {"Bob", "Charlie", "Caroline", "Tyler", "Klaus", "Joseph", "Mary", "Destiny", "Paul", "Rose", "Jason", "James", "John", "Matthew", "Alice", "Peter", "Anne", "Luke", "Sophia"};

        // Adiciona 15 elementos a cada lista
        for (int i = 0; i < 15; i++) {
            listaDeNomes1.add(nomes[i]);
            listaDeNomes2.add(nomes[i]);
            listaDeNomes3.add(nomes[i]);
            listaDeNomes4.add(nomes[i]);
        }

        // Imprime as listas com 15 registros
        System.out.println("Listas com 15 registros:");
        System.out.println("Lista 1: " + listaDeNomes1);
        System.out.println("Lista 2: " + listaDeNomes2);
        System.out.println("Lista 3: " + listaDeNomes3);
        System.out.println("Lista 4: " + listaDeNomes4);

        // Remove 5 elementos de cada lista
        for (int i = 0; i < 5; i++) {
            listaDeNomes1.remove(0);
            listaDeNomes2.remove(0);
            listaDeNomes3.remove(0);
            listaDeNomes4.remove(0);
        }

        // Imprime as listas após a remoção
        System.out.println("\nListas após remover 5 registros:");
        System.out.println("Lista 1: " + listaDeNomes1);
        System.out.println("Lista 2: " + listaDeNomes2);
        System.out.println("Lista 3: " + listaDeNomes3);
        System.out.println("Lista 4: " + listaDeNomes4);
    }
}
