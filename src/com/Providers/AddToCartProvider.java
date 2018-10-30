package com.Providers;

import java.sql.Connection;

import com.ServiceImpl.AddToCartImpl;
import com.Services.AddToCartInterface;

//to act as a provider b/w AddToCartInterface and AddToCartImpl

public class AddToCartProvider {
	public static AddToCartInterface getObject()
	{
		return new AddToCartImpl();
	}
}
