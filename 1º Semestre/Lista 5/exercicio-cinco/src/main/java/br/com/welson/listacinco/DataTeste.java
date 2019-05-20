package br.com.welson.listacinco;

import java.util.Scanner;

public class DataTeste {

    public static void main(String[] args) {

        Scanner scanner = new Scanner(System.in);

        Data data = new Data();

        System.out.println("Digite o dia: ");
        data.setDia(scanner.nextInt());

        System.out.println("Digite o mes: ");
        data.setMes(scanner.nextInt());

        System.out.println("Digite o ano: ");
        data.setAno(scanner.nextInt());

        data.exibeData();
    }
}
