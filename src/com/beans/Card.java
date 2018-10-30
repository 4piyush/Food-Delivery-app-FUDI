package com.beans;

public class Card {
	private int number;
	private int pin;
	public Card(int number, int pin) {
		super();
		this.number = number;
		this.pin = pin;
	}
	public int getNumber() {
		return number;
	}
	public void setNumber(int number) {
		this.number = number;
	}
	public int getPin() {
		return pin;
	}
	public void setPin(int pin) {
		this.pin = pin;
	}
	@Override
	public String toString() {
		return "Card [number=" + number + ", pin=" + pin + "]";
	}
	
}
