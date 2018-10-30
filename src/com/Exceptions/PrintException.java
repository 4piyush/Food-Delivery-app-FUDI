package com.Exceptions;

public class PrintException extends Exception 
{
	String msg;

	public PrintException(String msg) {
		super();
		this.msg = msg;
	}

	@Override
	public String toString() {
		return "InputException [msg=" + msg + "]";
	}
	
}
