package br.com.welson.listacinco;

import java.util.Scanner;

public class FaturaTeste {

    private static Scanner scanner;

    static {
        scanner = new Scanner(System.in);
    }

    public static void main(String[] args) {

        Fatura fatura = new Fatura();
        solicitarPreenchimentoDaFatura(fatura);

        System.out.println(fatura);

        Fatura fatura1 = new Fatura();
        solicitarPreenchimentoDaFatura(fatura1);

        System.out.println(fatura1);

        Fatura fatura2 = new Fatura();
        solicitarPreenchimentoDaFatura(fatura2);

        System.out.println(fatura2);
    }

    private static void solicitarPreenchimentoDaFatura(Fatura fatura) {
        System.out.println("Digite a descrição: ");
        fatura.setDescricao(scanner.nextLine());

        System.out.println("Digite o numero do pedido: ");
        fatura.setNumero(scanner.nextLine());

        System.out.println("Digite o preço unitario: ");
        fatura.setPreco(Double.parseDouble(scanner.nextLine()));

        System.out.println("Digite a quantidade: ");
        fatura.setQuantidade(Integer.parseInt(scanner.nextLine()));
    }
}
