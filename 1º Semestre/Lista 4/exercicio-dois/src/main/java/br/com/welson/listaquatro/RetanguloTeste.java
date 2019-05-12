package br.com.welson.listaquatro;

import java.util.Scanner;

public class RetanguloTeste {

    public static void main(String[] args) {

        Scanner scanner = new Scanner(System.in);

        System.out.println("Digite o X do retangulo: ");
        int x = scanner.nextInt();

        System.out.println("Digite o Y do retangulo: ");
        int y = scanner.nextInt();

        Retangulo retangulo = new Retangulo(x, y);
        System.out.println("Area: " + retangulo.getArea());

        Retangulo retangulo1 = new Retangulo();
        retangulo1.setX(x);
        retangulo1.setY(y);

        System.out.println("Area: " + retangulo1.getArea());

    }
}
