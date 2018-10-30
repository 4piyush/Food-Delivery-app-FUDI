package com.Exceptions;

public class LoadingException extends Exception 
{
	String msg;

	public LoadingException(String msg) {
		super();
		this.msg = msg;
	}

	@Override
	public String toString() {
		return "InputException [msg=" + msg + "]";
	}
	
}
