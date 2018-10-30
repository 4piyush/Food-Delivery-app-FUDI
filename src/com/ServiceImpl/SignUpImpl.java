package com.ServiceImpl;

import java.sql.Connection;

import com.DAOInterfaces.DaoInterface;
import com.Exceptions.InputException;
import com.Providers.DaoProvider;
import com.Services.SignUpInterface;
import com.beans.Login;
import com.beans.User;

public class SignUpImpl implements SignUpInterface {
	DaoInterface daoInterface;
	Connection con;
	public SignUpImpl(Connection con)
	{
		this.con=con;
		daoInterface=DaoProvider.getDaoObject(con);
	}
	
	//to create the user after signUp

	@Override
	public boolean createUser(User user, Login login) {
		
		try {
			return daoInterface.insertLogin(login) && daoInterface.insertUser(user);
		} catch (InputException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
	}
}
