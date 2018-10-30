package com.ServiceImpl;

import java.sql.Connection;

import com.DAOInterfaces.DaoInterface;
import com.Exceptions.ServiceException;
import com.Providers.DaoProvider;
import com.Services.SignInInterface;
import com.beans.Login;

public class SignInImpl implements SignInInterface {
	DaoInterface daoInterface;
	Connection con;
	public SignInImpl(Connection con)
	{
		this.con=con;
		daoInterface=DaoProvider.getDaoObject(con);
	}
	
	//to validate the login
	@Override
	public boolean validate(Login login) {
		
		try {
			return daoInterface.login(login);
		} catch (ServiceException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
	}
}
