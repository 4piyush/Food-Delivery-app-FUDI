package com.Providers;

import java.sql.Connection;

import com.ServiceImpl.SignUpImpl;
import com.Services.SignUpInterface;

//to act as a provider b/w SignUpInterface and SignUpImpl
public class SignUpProvider {
	public static SignUpInterface getObject(Connection con)
	{
		return new SignUpImpl(con);
	}
}
