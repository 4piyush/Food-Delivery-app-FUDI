package com.ServiceImpl;
import java.util.ArrayList;

import com.Services.QuantityAddInterface;
import com.beans.Cart;
public class QuantityAddImpl implements QuantityAddInterface{

	//to add the quantity to the cartlist
	@Override
	public boolean quantityAdd(ArrayList<Cart> cartList, int cartIndex) {
		// TODO Auto-generated method stub
		try{
			Cart c=cartList.get(cartIndex);
			c.setNumber((c.getNumber())+1);
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
