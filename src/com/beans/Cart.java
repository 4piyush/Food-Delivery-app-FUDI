package com.beans;

public class Cart {
	private MenuItem menu;
	private int number;
	private float price;
	public Cart(){}
	public Cart(MenuItem menu, int number, float price) {
		super();
		this.menu = menu;
		this.number = number;
		this.price = price;
	}
	public MenuItem getMenu() {
		return menu;
	}
	public void setMenu(MenuItem menu) {
		this.menu = menu;
	}
	public int getNumber() {
		return number;
	}
	public void setNumber(int number) {
		this.number = number;
	}
	@Override
	public String toString() {
		return "Cart [menu=" + menu + ", number=" + number + ", price=" + price + "]";
	}
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	
	
	
}
