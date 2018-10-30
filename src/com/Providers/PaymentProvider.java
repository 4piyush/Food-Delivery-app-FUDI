package com.Providers;

import java.sql.Connection;

import com.ServiceImpl.PaymentImpl;

import com.Services.PaymentInterface;


//to act as a provider b/w PaymentInterface and PaymentImpl
public class PaymentProvider {
	public static PaymentInterface getObject(Connection con)
	{
		return new PaymentImpl(con);
	}
}
