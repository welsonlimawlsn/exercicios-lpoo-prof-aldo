package br.com.welson.listacinco;

public class Cliente {

    private String nomeCompleto;
    private String rg;
    private String cpf;
    private Endereco endereco;

    public Cliente() {
    }

    public Cliente(String nomeCompleto, String rg, String cpf, Endereco endereco) {
        this.nomeCompleto = nomeCompleto;
        this.rg = rg;
        this.cpf = cpf;
        this.endereco = endereco;
    }

    public String getNomeCompleto() {
        return nomeCompleto;
    }

    public void setNomeCompleto(String nomeCompleto) {
        this.nomeCompleto = nomeCompleto;
    }

    public String getRg() {
        return rg;
    }

    public void setRg(String rg) {
        this.rg = rg;
    }

    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public Endereco getEndereco() {
        return endereco;
    }

    public void setEndereco(Endereco endereco) {
        this.endereco = endereco;
    }

    @Override
    public String toString() {
        return "Cliente{" +
                "nomeCompleto='" + nomeCompleto + '\'' +
                ", rg='" + rg + '\'' +
                ", cpf='" + cpf + '\'' +
                ", endereco=" + endereco +
                '}';
    }
}
