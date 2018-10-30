package com.Exceptions;

public class OutputException extends Exception 
{
	String msg;

	public OutputException(String msg) {
		super();
		this.msg = msg;
	}

	@Override
	public String toString() {
		return "InputException [msg=" + msg + "]";
	}
	
}
