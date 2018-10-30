package com.Providers;

import java.sql.Connection;

import com.ServiceImpl.SignInImpl;

import com.Services.SignInInterface;

public class SignInProvider {
	public static SignInInterface getObject(Connection con)
	{
		return new SignInImpl(con);
	}
}
