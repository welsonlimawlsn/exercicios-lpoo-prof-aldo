package br.com.welson.listaquatro;

public class ContaTest {

    public static void main(String[] args) {

        Conta conta = new Conta(
                new Cliente(
                        "João da Silva",
                        "123456",
                        "12345678912",
                        new Endereco(
                                "QNR ! Conjunto G",
                                "26",
                                "Casa",
                                "Ceilandia Norte",
                                "Brasilia",
                                "Distrito Federal",
                                "72275107")
                ),
                "12345-6",
                "1234",
                Conta.CONTA_CORRENTE);

        conta.imprimirSaldo();
        conta.depositar(123.43);
        conta.imprimirSaldo();
        conta.sacar(343.23);
        conta.imprimirSaldo();
        conta.sacar(54.24);
        conta.imprimirSaldo();
    }
}
