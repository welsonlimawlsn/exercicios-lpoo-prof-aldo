package br.com.welson.listacinco;

import java.util.Scanner;

public class Principal {

    public static void main(String[] args) {

        Scanner scanner = new Scanner(System.in);

        Passageiro passageiro = new Passageiro();

        System.out.println("Digite o nome do passageiro: ");
        passageiro.setNomeCompleto(scanner.nextLine());

        System.out.println("Digite o CPF do passageiro: ");
        passageiro.setCpf(scanner.nextLine());

        Lugar origem = new Lugar();

        System.out.println("Digite o país de origem: ");
        origem.setPais(scanner.nextLine());

        System.out.println("Digite a cidade de origem: ");
        origem.setCidade(scanner.nextLine());

        Lugar destino = new Lugar();

        System.out.println("Digite o país de destino: ");
        destino.setPais(scanner.nextLine());

        System.out.println("Digite a cidade de destino: ");
        destino.setCidade(scanner.nextLine());

        Passagem passagem = new Passagem();

        System.out.println("Digite a data de ida: ");
        passagem.setDataIda(scanner.nextLine());

        System.out.println("Digite a data de volta: ");
        passagem.setDataVolta(scanner.nextLine());

        passagem.setOrigem(origem);
        passagem.setDestino(destino);
        passagem.setPassageiro(passageiro);

        System.out.println("Digite o preço das passagens: ");
        passagem.setValor(scanner.nextDouble());

        passagem.imprimirMensagem();

    }
}
