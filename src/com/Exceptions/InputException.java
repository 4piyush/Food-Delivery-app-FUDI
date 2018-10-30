package com.Exceptions;

public class InputException extends Exception 
{
	String msg;

	public InputException(String msg) {
		super();
		this.msg = msg;
	}

	@Override
	public String toString() {
		return "InputException [msg=" + msg + "]";
	}
	
}
