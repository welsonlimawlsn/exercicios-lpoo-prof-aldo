package br.com.welson.listacinco;

public class Empregado {

    private String nome;
    private String sobrenome;
    private double salario;

    public void aplicarAumentoSalarial(double porcetagem) {
        salario += salario / 100 * porcetagem;
    }

    public double getSalarioAnual() {
        return salario * 12;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getSobrenome() {
        return sobrenome;
    }

    public void setSobrenome(String sobrenome) {
        this.sobrenome = sobrenome;
    }

    public double getSalario() {
        return salario;
    }

    public void setSalario(double salario) {
        if (salario >= 0)
            this.salario = salario;
        else
            this.salario = 0;
    }
}
