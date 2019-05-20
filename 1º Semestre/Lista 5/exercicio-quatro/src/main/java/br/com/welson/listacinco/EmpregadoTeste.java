package br.com.welson.listacinco;

import java.util.Scanner;

public class EmpregadoTeste {

    private static Scanner scanner;

    static {
        scanner = new Scanner(System.in);
    }

    public static void main(String[] args) {

        Empregado empregado = new Empregado();

        preencheEmpregado(empregado);

        Empregado empregado1 = new Empregado();

        preencheEmpregado(empregado1);

        aplicarAumentoEImprimirSalarioAnualAntesDepoisAumento(empregado);

        aplicarAumentoEImprimirSalarioAnualAntesDepoisAumento(empregado1);

    }

    private static void aplicarAumentoEImprimirSalarioAnualAntesDepoisAumento(Empregado empregado) {
        System.out.printf("Salario anual do(a) %s é R$ %.2f\n", empregado.getNome(), empregado.getSalarioAnual());

        empregado.aplicarAumentoSalarial(10);

        System.out.printf("Salario anual após aumento de 10 porcento do(a) %s é R$ %.2f\n", empregado.getNome(), empregado.getSalarioAnual());
    }

    private static void preencheEmpregado(Empregado empregado) {
        System.out.println("Digite o nome do empregado: ");
        empregado.setNome(scanner.next());

        System.out.println("Digite o sobrenome do empregado: ");
        empregado.setSobrenome(scanner.next());

        System.out.println("Digite o salario mensal do empregado: ");
        empregado.setSalario(scanner.nextDouble());
    }
}
