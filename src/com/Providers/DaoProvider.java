package com.Providers;

import java.sql.Connection;

import com.DAOImpl.DaoImpl;
import com.DAOInterfaces.DaoInterface;

public class DaoProvider {

	public static DaoInterface getDaoObject(Connection con) {
		// TODO Auto-generated method stub
		return new DaoImpl(con);
	}
}
