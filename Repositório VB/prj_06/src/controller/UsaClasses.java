package controller;
import model.Aluno;
import javax.swing.*;

public class UsaClasses {
    public static void main(String[] args) {
        Aluno obj_aluno = new Aluno();
        Aluno obj_aluno2 = new Aluno();

//a maior parte das anotações aqui são de partes antigas
        
        //entrada de dados

        //obj_aluno.nome = JOptionPane.showInputDialog("Digite o nome: ");
        obj_aluno.setNome(JOptionPane.showInputDialog("Digite o nome: "));
        obj_aluno.setRgm(JOptionPane.showInputDialog("Digite o rgm: "));
        //obj_aluno.idade= Integer.parseInt(JOptionPane.showInputDialog("Digite a idade: "));
        obj_aluno.pegarIdade(Integer.parseInt(JOptionPane.showInputDialog("Digite a idade: ")));
        //obj_aluno.nota1 = Double.parseDouble(JOptionPane.showInputDialog("Digite a nota 1: "));
        obj_aluno.inserirNota1(Double.parseDouble(JOptionPane.showInputDialog("Digite a nota 1: ")));
        obj_aluno.inserirNota2(Double.parseDouble(JOptionPane.showInputDialog("Digite a nota 2: ")));

        /*double media = obj_aluno.calcularMedia(obj_aluno.pegarNota1(), obj_aluno.pegarNota2());
        boolean status = obj_aluno.verificarAprovacao(media);*/

        //JOptionPane.showMessageDialog(null,media);
        //JOptionPane.showMessageDialog(null,status);
        /*JOptionPane.showMessageDialog(null,"A média do aluno "+ obj_aluno.getNome() + " é: " + media + "\nSeu status é: "+ ((status)? "Aprovado":"Reprovado"));*/


        //saída de dados
        JOptionPane.showMessageDialog(null,obj_aluno.imprimirdados());
        JOptionPane.showMessageDialog(null,obj_aluno2.imprimirdados());

    }
}
