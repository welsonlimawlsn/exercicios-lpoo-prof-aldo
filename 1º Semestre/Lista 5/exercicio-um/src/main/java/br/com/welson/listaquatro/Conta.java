package br.com.welson.listaquatro;

public class Conta {

    private Cliente cliente;
    private String numeroConta;
    private String numeroAgencia;
    private double saldo;
    private int tipoConta;

    public static final int CONTA_CORRENTE = 0;
    public static final int CONTA_POUPANCA = 1;

    public Conta() {
    }

    public Conta(Cliente cliente, String numeroConta, String numeroAgencia, int tipoConta) {
        this.cliente = cliente;
        this.numeroConta = numeroConta;
        this.numeroAgencia = numeroAgencia;
        this.tipoConta = tipoConta;
    }

    public void depositar(double valor) {
        saldo += valor;
        System.out.printf("O valor de R$ %.2f foi depositado.\n", valor);
    }

    public void sacar(double valor) {
        if (saldo >= valor) {
            saldo -= valor;
            System.out.printf("O valor de R$ %.2f foi sacado.\n", valor);
        } else {
            System.out.println("Saldo insuficiente.");
        }
    }

    public void imprimirSaldo() {
        System.out.println("===========================");
        System.out.printf("Saldo Disponivel: R$ %.2f\n", saldo);
        System.out.println("===========================");
    }

    public Cliente getCliente() {
        return cliente;
    }

    public void setCliente(Cliente cliente) {
        this.cliente = cliente;
    }

    public String getNumeroConta() {
        return numeroConta;
    }

    public void setNumeroConta(String numeroConta) {
        this.numeroConta = numeroConta;
    }

    public String getNumeroAgencia() {
        return numeroAgencia;
    }

    public void setNumeroAgencia(String numeroAgencia) {
        this.numeroAgencia = numeroAgencia;
    }

    public double getSaldo() {
        return saldo;
    }

    public int getTipoConta() {
        return tipoConta;
    }

    public void setTipoConta(int tipoConta) {
        this.tipoConta = tipoConta;
    }
}
