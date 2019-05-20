package br.com.welson.listacinco;

import java.util.Scanner;

public class ContaTest {

    public static void main(String[] args) {

        Scanner scanner = new Scanner(System.in);


        Cliente cliente = new Cliente();

        System.out.println("Digite o nome completo: ");
        cliente.setNomeCompleto(scanner.nextLine());

        System.out.println("Digite o CPF: ");
        cliente.setCpf(scanner.nextLine());

        System.out.println("Digite o RG: ");
        cliente.setRg(scanner.nextLine());

        System.out.println("Agora você vai digitar o endereço: ");

        Endereco endereco = new Endereco();

        System.out.println("Digite a rua: ");
        endereco.setRua(scanner.nextLine());

        System.out.println("Digite o número: ");
        endereco.setNumero(scanner.nextLine());

        System.out.println("Digite o complemento: ");
        endereco.setComplemento(scanner.nextLine());

        System.out.println("Digite o bairro: ");
        endereco.setBairro(scanner.nextLine());

        System.out.println("Digite a cidade: ");
        endereco.setCidade(scanner.nextLine());

        System.out.println("Digite o estado: ");
        endereco.setEstado(scanner.nextLine());

        System.out.println("Digite o CEP: ");
        endereco.setCep(scanner.nextLine());

        cliente.setEndereco(endereco);

        System.out.println("Agora as informações sobre a conta: ");
        Conta conta = new Conta();

        conta.setCliente(cliente);

        System.out.println("Digite o número da agencia: ");
        conta.setNumeroAgencia(scanner.nextLine());

        System.out.println("Digite o número da conta: ");
        conta.setNumeroConta(scanner.nextLine());

        System.out.println("Digite o tipo da conta: [1] - Corrente e [2] - Poupança");
        int tipoConta = scanner.nextInt();

        if (tipoConta == 1)
            conta.setTipoConta(Conta.CONTA_CORRENTE);
        else if (tipoConta == 2)
            conta.setTipoConta(Conta.CONTA_POUPANCA);

        System.out.println("Conta cadastrada: " + conta);

        conta.imprimirSaldo();

        System.out.println("Digite um valor a depositar: ");
        conta.depositar(scanner.nextDouble());
        conta.imprimirSaldo();

        System.out.println("Digite um valor a sacar: ");
        conta.sacar(343.23);
        conta.imprimirSaldo();

        System.out.println("Digite um valor a sacar: ");
        conta.sacar(54.24);
        conta.imprimirSaldo();
    }
}
