import javax.swing.*;

public class Conversoes2 {
    public static void main(String[] args) {
        //entrada
        double notaA1 = Double.parseDouble(JOptionPane.showInputDialog("Digite a nota A1: "));
        double notaA2 = Double.parseDouble(JOptionPane.showInputDialog("Digite a nota A2: "));
        //processamento
        double resultado = notaA1 + notaA2;
        //saida
        JOptionPane.showMessageDialog(null,"A media: "+resultado);
    }
}