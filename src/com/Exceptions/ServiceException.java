package com.Exceptions;

public class ServiceException extends Exception 
{
	String msg;

	public ServiceException(String msg) {
		super();
		this.msg = msg;
	}

	@Override
	public String toString() {
		return "InputException [msg=" + msg + "]";
	}
	
}
