import javax.swing.*;

public class Conversoes {
    public static void main(String[] args) {
        //entrada
        String notaA1 = JOptionPane.showInputDialog("Digite a nota A1: ");
        String notaA2 = JOptionPane.showInputDialog("Digite a nota A2: ");
        //processamento
        double notaA1convertida = Double.parseDouble(notaA1);
        double notaA2convertida = Double.parseDouble(notaA2);

        double resultado = notaA1convertida + notaA2convertida;

        //saida
        JOptionPane.showMessageDialog(null,"A media: "+resultado);
    }
}





