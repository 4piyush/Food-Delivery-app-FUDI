package com.Providers;

import java.sql.Connection;

import com.ServiceImpl.MenuItemsImpl;
import com.Services.MenuItemsInterface;

//to act as a provider b/w MenuItemsInterface and MenuItemsImpl
public class MenuItemsProvider {
	public static MenuItemsInterface getObject(Connection con)
	{
		return new MenuItemsImpl(con);
	}
}
