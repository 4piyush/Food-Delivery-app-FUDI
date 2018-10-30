package com.Providers;

import java.sql.Connection;

import com.ServiceImpl.GetLocationImpl;
import com.Services.GetLocationInterface;

//to act as a provider b/w GetLocationInterface and GetLocationImpl
public class GetLocationProvider {
	public static GetLocationInterface getObject(Connection con)
	{
		return new GetLocationImpl(con);
	}
}
