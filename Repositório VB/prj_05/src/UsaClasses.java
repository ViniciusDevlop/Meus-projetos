import javax.swing.*;

public class UsaClasses {
    public static void main(String[] args) {
        Aluno obj_aluno = new Aluno();

        //entrada de dados
        obj_aluno.nome = JOptionPane.showInputDialog("Digite o nome: ");
        obj_aluno.rgm = JOptionPane.showInputDialog("Digite o rgm: ");
        obj_aluno.idade = Integer.parseInt(JOptionPane.showInputDialog("Digite a idade: "));
        obj_aluno.nota1 = Double.parseDouble(JOptionPane.showInputDialog("Digite a nota 1: "));
        obj_aluno.nota2 = Double.parseDouble(JOptionPane.showInputDialog("Digite a nota 2: "));

        double media = obj_aluno.calcularMedia(obj_aluno.nota1, obj_aluno.nota2);
        boolean status = obj_aluno.verificarAprovacao(media);

        //JOptionPane.showMessageDialog(null,media);
        //JOptionPane.showMessageDialog(null,status);
        JOptionPane.showMessageDialog(null,"A média do aluno "+
                obj_aluno.nome + " é: " + media + "\nSeu status é: "+ ((status)? "Aprovado":"Reprovado"));
    }
}