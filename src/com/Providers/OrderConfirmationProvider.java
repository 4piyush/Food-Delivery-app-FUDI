package com.Providers;

import java.sql.Connection;

import com.ServiceImpl.OrderConfirmationImpl;

import com.Services.OrderConfirmationInterface;


//to act as a provider b/w OrderConfirmationInterface and OrderConfirmationImpl
public class OrderConfirmationProvider {
	public static OrderConfirmationInterface getObject()
	{
		return new OrderConfirmationImpl();
	}
}
