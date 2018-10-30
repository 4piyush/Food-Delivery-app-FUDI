package com.Providers;

import com.ServiceImpl.QuantityAddImpl;
import com.Services.QuantityAddInterface;


//to act as a provider b/w QuantityAddInterface and QuantityAddImpl
public class QuantityAddProvider {
	public static QuantityAddInterface getObject()
	{
		return new QuantityAddImpl();
	}
}
