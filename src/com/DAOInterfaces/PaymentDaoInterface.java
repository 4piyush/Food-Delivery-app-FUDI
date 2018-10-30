package com.DAOInterfaces;

import com.Exceptions.*;
import com.beans.Card;

import com.beans.Login;

//DataAccessObject for payment confirmation
public interface PaymentDaoInterface
{
	boolean pay(Card card) throws InputException;

}
