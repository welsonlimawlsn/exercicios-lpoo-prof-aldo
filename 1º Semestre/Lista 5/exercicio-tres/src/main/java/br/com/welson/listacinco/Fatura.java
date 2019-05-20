package br.com.welson.listacinco;

public class Fatura {

    private String numero;
    private String descricao;
    private int quantidade;
    private double preco;

    public double getValorTotal() {
        return preco * quantidade;
    }

    public String getNumero() {
        return numero;
    }

    public void setNumero(String numero) {
        this.numero = numero;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public int getQuantidade() {
        return quantidade;
    }

    public void setQuantidade(int quantidade) {
        if (quantidade < 0)
            this.quantidade = 0;
        else
            this.quantidade = quantidade;
    }

    public double getPreco() {
        return preco;
    }

    public void setPreco(double preco) {
        if (preco < 0)
            this.preco = 0;
        else
            this.preco = preco;
    }

    @Override
    public String toString() {
        return "==========================================" +
                "\nDescrição: " + descricao +
                "\nNumero: " + numero +
                "\nQuantidade: " + quantidade +
                "\nPreço: R$ " + preco +
                "\nValor Total: R$ " + getValorTotal() +
                "\n==========================================";
    }
}
