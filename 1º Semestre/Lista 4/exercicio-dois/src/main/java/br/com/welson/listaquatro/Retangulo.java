package br.com.welson.listaquatro;

class Retangulo {

    private int x;
    private int y;
    private int area;

    public Retangulo() {
    }

    public Retangulo(int x, int y) {
        this.x = x;
        this.y = y;
        setArea();
    }

    public int getX() {
        return x;
    }

    public void setX(int x) {
        this.x = x;
    }

    public int getY() {
        return y;
    }

    public void setY(int y) {
        this.y = y;
    }

    public int getArea() {
        setArea();
        return area;
    }

    private void setArea() {
        area = x * y;
    }
}