package br.com.welson.listaquatro;

class BuscaMaiorMenor {

    private int n1;
    private int n2;
    private int n3;
    private int n4;
    private int n5;
    private int maior;
    private int menor;

    public BuscaMaiorMenor() {
    }

    BuscaMaiorMenor(int n1, int n2, int n3, int n4, int n5) {
        this.n1 = n1;
        this.n2 = n2;
        this.n3 = n3;
        this.n4 = n4;
        this.n5 = n5;
    }

    public int getN1() {
        return n1;
    }

    public void setN1(int n1) {
        this.n1 = n1;
    }

    public int getN2() {
        return n2;
    }

    public void setN2(int n2) {
        this.n2 = n2;
    }

    public int getN3() {
        return n3;
    }

    public void setN3(int n3) {
        this.n3 = n3;
    }

    public int getN4() {
        return n4;
    }

    public void setN4(int n4) {
        this.n4 = n4;
    }

    public int getN5() {
        return n5;
    }

    public void setN5(int n5) {
        this.n5 = n5;
    }

    public int getMaior() {
        setMaior();
        return maior;
    }

    private void setMaior() {
        int maior = n1;
        if (n2 > maior)
            maior = n2;
        if (n3 > maior)
            maior = n3;
        if (n4 > maior)
            maior = n4;
        if (n5 > maior)
            maior = n5;
        this.maior = maior;
    }

    public int getMenor() {
        setMenor();
        return menor;
    }

    private void setMenor() {
        int menor = n1;
        if (n2 < menor)
            menor = n2;
        if (n3 < menor)
            menor = n3;
        if (n4 < menor)
            menor = n4;
        if (n5 < menor)
            menor = n5;
        this.menor = menor;
    }
}