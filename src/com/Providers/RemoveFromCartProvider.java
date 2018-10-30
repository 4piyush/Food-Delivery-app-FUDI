package com.Providers;

import com.ServiceImpl.RemoveFromCartImpl;

import com.Services.RemoveFromCartInterface;


//to act as a provider b/w RemoveFromCartInterface and RemoveFromCartImpl
public class RemoveFromCartProvider {
	public static RemoveFromCartInterface getObject()
	{
		return new RemoveFromCartImpl();
	}
}
