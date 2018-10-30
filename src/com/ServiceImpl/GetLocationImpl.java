package com.ServiceImpl;

import java.sql.Connection;
import java.util.ArrayList;

import com.DAOInterfaces.DaoInterface;
import com.Exceptions.OutputException;
import com.Providers.DaoProvider;
import com.Services.GetLocationInterface;
import com.beans.Location;

public class GetLocationImpl implements GetLocationInterface {
	DaoInterface daoInterface;
	Connection con;
	public GetLocationImpl(Connection con)
	{
		this.con=con;
		daoInterface=DaoProvider.getDaoObject(con);
	}
	
	//to get the ArrayList of location
	@Override
	public ArrayList<Location> getLocation() {
		try{
		return daoInterface.getLocation();
		}catch(OutputException e)
		
		{
			e.printStackTrace();
			return null;
		}
		
	}

}
