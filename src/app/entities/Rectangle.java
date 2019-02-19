package app.entities;

public class Rectangle {
	
	private int a;
	private int b;
	private int square;
	
	public Rectangle() {
	}
	
	public Rectangle(int a, int b) {
		this.a = a;
		this.b = b;
		square();
	}
	
	public int getA() {
		return this.a;
	}
	
	public int getB() {
		return this.b;
	}
	
	public void setA(int a) {
		this.a = a;
		square();
	}
	
	public void setB(int b) {
		this.b = b;
		square();
	}
	
	private void square() {
		this.square = this.a * this.b;
	}
	
	@Override
	public String toString() {
		return "Прямоугольник a = " + this.a + ", b = " + this.b +
				"; S = " + this.square;
	}

	@Override
	 public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Rectangle r = (Rectangle) o;

        return (a == r.a && b == r.b) ||
        		(a == r.b && b == r.a);        
    }
	
	@Override
	public int hashCode() {
		return a*42 + b*42*42;
	}
	
}
