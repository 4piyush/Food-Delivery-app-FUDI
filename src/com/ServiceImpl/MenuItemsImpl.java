package com.ServiceImpl;
import java.sql.Connection;
import java.util.ArrayList;

import com.DAOInterfaces.DaoInterface;
import com.Exceptions.OutputException;
import com.Providers.DaoProvider;
import com.Services.MenuItemsInterface;
import com.beans.MenuItem;
public class MenuItemsImpl implements MenuItemsInterface {
	DaoInterface daoInterface;
	Connection con;
	public MenuItemsImpl(Connection con)
	{
		this.con=con;
		daoInterface=DaoProvider.getDaoObject(con);
	}
	
	//To get the arrayList of menu items
	@Override
	public ArrayList<MenuItem> getMenuItems() {
		try {
			return daoInterface.getMenuItems();
		} catch (OutputException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
		// TODO Auto-generated method stub
		
	}

}
