package br.com.welson.listacinco;

public class Passagem {
    
    private Passageiro passageiro;
    private Lugar origem;
    private Lugar destino;
    private String dataIda;
    private String dataVolta;
    private double valor;
    
    public void imprimirMensagem() {
        System.out.println("\"Obrigado po escolher a nossa agência aérea\"");
        System.out.println("Origem: " + origem.getCidade() + " - " + origem.getPais() + "\tDestino: " + destino.getCidade() + " - " + destino.getPais());
        System.out.printf("Valor: R$ %.2f\n", valor);
        System.out.println("Passageiro: " + passageiro.getNomeCompleto());
        System.out.println("CPF: " + passageiro.getCpf());
        System.out.println("Data de ida: " + dataIda);
        System.out.println("Data de volta: " + dataVolta);
        System.out.println("\"Desejamos que tenha um excelente vôo!!!\"");
    }

    public Passageiro getPassageiro() {
        return passageiro;
    }

    public void setPassageiro(Passageiro passageiro) {
        this.passageiro = passageiro;
    }
    
    public Lugar getOrigem() {
        return origem;
    }

    public void setOrigem(Lugar origem) {
        this.origem = origem;
    }

    public Lugar getDestino() {
        return destino;
    }

    public void setDestino(Lugar destino) {
        this.destino = destino;
    }

    public String getDataIda() {
        return dataIda;
    }

    public void setDataIda(String dataIda) {
        this.dataIda = dataIda;
    }

    public String getDataVolta() {
        return dataVolta;
    }

    public void setDataVolta(String dataVolta) {
        this.dataVolta = dataVolta;
    }

    public double getValor() {
        return valor;
    }

    public void setValor(double valor) {
        this.valor = valor;
    }
    
}
