import javax.swing.*;
public class UsaClasses {
    public static void main(String[] args) {
        double nota1 =Double.parseDouble(JOptionPane.showInputDialog("Digite a nota 1: "));
        double nota2 =Double.parseDouble(JOptionPane.showInputDialog("Digite a nota 2: "));
        Boletim aluno1 = new Boletim(10,7);
        //aluno1.setN1(1);
        //aluno1.setN2(6);
        double media = aluno1.calcularMedia(aluno1.getN1(),aluno1.getN2());

        JOptionPane.showMessageDialog(null,media);
        String conceito = aluno1.verificarConceito(media);
        JOptionPane.showMessageDialog(null,conceito);




        //double media = aluno1.calcularMedia(6,2,4);
        //double media = aluno1.calcularMedia(9);
        //o que eu mandar de valor é o metodo que ele chamará



        //System.out.println(media);
        //String conceito = aluno1.verificarConceito(media);
        //System.out.println(conceito);
        /*O argumento é o que preciso passar para o*/
       // m3todo funcionar//
        // System.out.println(aluno1.calcularMedia(6,5.5));
        //Sobrecarregar um m3todo é criar mais de um m3todo
        //com o mesmo nome,mas com parâmetros diferentes.
        //set vai fazer eu colocar coisas no atributo.

    }
}
