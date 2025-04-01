/*Listas 29/03/2025*/
import java.util.ArrayList;
import java.util.List;
import java.util.Collections;
public class exemploarraylist {

    public static void main(String[] args) {

        List<String> turma01 = new ArrayList<>();
        turma01.add("Alice");
        turma01.add("Bob");
        turma01.add("Carol");
        turma01.add("Carlos");
        turma01.add("Marcos");
        turma01.add("Maria");
        turma01.add("Sofia");
        turma01.add("Marcelo");
        turma01.add("Marcia");
        turma01.add("Lucas");


        List<String> turma02 = new ArrayList<>();
        turma02.add("Kelly");
        turma02.add("Liam");
        turma02.add("Mia");
        turma02.add("Noah");
        turma02.add("Olivia");
        turma02.add("Peter");
        turma02.add("Quinn");
        turma02.add("Rachel");
        turma02.add("Samuel");
        turma02.add("Tara");


        List<String> turma03 = new ArrayList<>();
        turma03.add("Ana Paula");
        turma03.add("Ricardo");
        turma03.add("Juliana");
        turma03.add("Fernanda");
        turma03.add("Pedro");
        turma03.add("Larissa");
        turma03.add("Daniel");
        turma03.add("Gabriela");
        turma03.add("Mario");
        turma03.add("Patrícia");


        List<String> turma04 = new ArrayList<>();
        turma04.add("Renata");
        turma04.add("Gustavo");
        turma04.add("Débora");
        turma04.add("Júlio");
        turma04.add("Isabela");
        turma04.add("Eduardo");
        turma04.add("Cláudia");
        turma04.add("Guilherme");
        turma04.add("Diego");
        turma04.add("Antônio");


        List<String> turma05 = new ArrayList<>();
        turma05.add("Bruno");
        turma05.add("Rafael");
        turma05.add("Letícia");
        turma05.add("Mariana");
        turma05.add("Fábio");
        turma05.add("Jéssica");
        turma05.add("Aline");
        turma05.add("Érica");
        turma05.add("Luís");
        turma05.add("Cristiane");


        List<String> turma06 = new ArrayList<>();
        turma06.add("Henrique");
        turma06.add("Camila");
        turma06.add("Anderson");
        turma06.add("Eliane");
        turma06.add("Adriana");
        turma06.add("Elisângela");
        turma06.add("Francisco");
        turma06.add("Michele");
        turma06.add("Maiara");
        turma06.add("Flávia");


        List<String> turma07 = new ArrayList<>();
        turma07.add("Murilo");
        turma07.add("Karina");
        turma07.add("Priscila");
        turma07.add("Franciele");
        turma07.add("Natália");
        turma07.add("Laura");
        turma07.add("Roberta");
        turma07.add("Geovana");
        turma07.add("Paula");
        turma07.add("Cássia");


        List<String> turma08 = new ArrayList<>();
        turma08.add("Leandro");
        turma08.add("Giovana");
        turma08.add("Beatriz");
        turma08.add("Luciana");
        turma08.add("Elaine");
        turma08.add("Thiago");
        turma08.add("Rodrigo");
        turma08.add("Vinícius");
        turma08.add("Simone");
        turma08.add("Igor");


        List<String> turma09 = new ArrayList<>();
        turma09.add("Lorena");
        turma09.add("Raul");
        turma09.add("Valentina");
        turma09.add("Heitor");
        turma09.add("Yasmin");
        turma09.add("Davi");
        turma09.add("Isadora");
        turma09.add("Enzo");
        turma09.add("Manuela");
        turma09.add("Cauã");

        List<String> todosAlunos = new ArrayList<>();

        todosAlunos.addAll(turma01);
        todosAlunos.addAll(turma02);
        todosAlunos.addAll(turma03);
        todosAlunos.addAll(turma04);
        todosAlunos.addAll(turma05);
        todosAlunos.addAll(turma06);
        todosAlunos.addAll(turma07);
        todosAlunos.addAll(turma08);
        todosAlunos.addAll(turma09);

        System.out.println("Lista de todos os alunos:");
        for (String aluno : todosAlunos) {
            System.out.println(aluno);
        }
       Collections.sort(todosAlunos);
    }
}
