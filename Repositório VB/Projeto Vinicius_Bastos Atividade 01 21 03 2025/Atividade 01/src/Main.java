public class Main {
    public static void main(String[] args) {
        Funcionario funcionario1 = new Funcionario(123, 2500.0, "Desenvolvedor");
        Funcionario funcionario2 = new Funcionario();
        funcionario2.setCracha(456);
        funcionario2.setSalario(1800.0);
        funcionario2.setCargo("Assistente");

        System.out.println("Funcionário 1:");
        System.out.println("Crachá: " + funcionario1.getCracha());
        System.out.println("Salário: " + funcionario1.getSalario());
        System.out.println("Cargo: " + funcionario1.getCargo());

        System.out.println("\nFuncionário 2:");
        System.out.println("Crachá: " + funcionario2.getCracha());
        System.out.println("Salário: " + funcionario2.getSalario());
        System.out.println("Cargo: " + funcionario2.getCargo());

        funcionario1.calculaAumento(10.0);
        System.out.println("\nNovo salário do Funcionário 1: " + funcionario1.getSalario());

        funcionario2.calculaAumento(2);
        System.out.println("Novo salário do funcionário 2: " + funcionario2.getSalario());
    }
}