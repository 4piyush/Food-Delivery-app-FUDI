package com.Providers;

import java.sql.Connection;

import com.DAOImpl.PaymentDaoImpl;
import com.DAOInterfaces.PaymentDaoInterface;


//to act as a provider b/w PaymentDaoInterface and PaymentDaoImpl
public class PaymentDaoProvider {
	public static PaymentDaoInterface getDaoObject(Connection con) {
		// TODO Auto-generated method stub
		return new PaymentDaoImpl(con);
	}
}
