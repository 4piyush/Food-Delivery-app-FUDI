package com.ServiceImpl;

import java.util.ArrayList;

import com.Services.RemoveFromCartInterface;
import com.beans.Cart;

public class RemoveFromCartImpl implements RemoveFromCartInterface{
	
	
	//to remove the item from the cart list
	public boolean removeFromCart(ArrayList<Cart> cartList,int cartIndex)
	{
		try{
			Cart c=cartList.get(cartIndex);
			c.setNumber((c.getNumber())-1);
			c.setPrice(c.getMenu().getPrice()*c.getNumber());
			return true;
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return false;
	}
}
