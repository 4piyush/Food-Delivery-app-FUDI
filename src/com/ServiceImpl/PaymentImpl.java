package com.ServiceImpl;

import java.sql.Connection;

import com.DAOInterfaces.PaymentDaoInterface;
import com.Exceptions.InputException;
import com.Providers.PaymentDaoProvider;
import com.Services.PaymentInterface;
import com.beans.Card;

public class PaymentImpl implements PaymentInterface {
	PaymentDaoInterface daoInterface;
	Connection con;
	public PaymentImpl(Connection con)
	{
		this.con=con;
		daoInterface=PaymentDaoProvider.getDaoObject(con);
	}
	
	//to validate the card details
	public boolean validate(Card card)
	{
		try {
			return daoInterface.pay(card);
		} catch (InputException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
	}
}
