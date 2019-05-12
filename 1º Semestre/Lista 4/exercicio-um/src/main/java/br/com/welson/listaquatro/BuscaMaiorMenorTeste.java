package br.com.welson.listaquatro;

import java.util.Scanner;

public class BuscaMaiorMenorTeste {

    public static void main(String[] args) {

        Scanner scanner = new Scanner(System.in);

        System.out.println("Digite o primeiro numero: ");
        int n1 = scanner.nextInt();

        System.out.println("Digite o segundo numero: ");
        int n2 = scanner.nextInt();

        System.out.println("Digite o terceiro numero: ");
        int n3 = scanner.nextInt();

        System.out.println("Digite o quarto numero: ");
        int n4 = scanner.nextInt();

        System.out.println("Digite o quinto numero: ");
        int n5 = scanner.nextInt();

        BuscaMaiorMenor buscaMaiorMenor = new BuscaMaiorMenor(n1, n2, n3, n4, n5);

        System.out.println("Maior: " + buscaMaiorMenor.getMaior());
        System.out.println("Menor: " + buscaMaiorMenor.getMenor());

        BuscaMaiorMenor buscaMaiorMenor1 = new BuscaMaiorMenor();
        buscaMaiorMenor1.setN1(n1);
        buscaMaiorMenor1.setN2(n2);
        buscaMaiorMenor1.setN3(n3);
        buscaMaiorMenor1.setN4(n4);
        buscaMaiorMenor1.setN5(n5);

        System.out.println("Maior: " + buscaMaiorMenor1.getMaior());
        System.out.println("Menor: " + buscaMaiorMenor1.getMenor());

    }
}
