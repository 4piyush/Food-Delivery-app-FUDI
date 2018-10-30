package com.ServiceImpl;
import java.util.ArrayList;

import com.Services.AddToCartInterface;
import com.beans.Cart;
import com.beans.MenuItem;
public class AddToCartImpl implements AddToCartInterface {

	
	//To add the items in the the cart list
	@Override
	public ArrayList<Cart> AddToCart(ArrayList<Cart> cartList, MenuItem menu,int number) {
		// TODO Auto-generated method stub
		Cart cart = null;int x;
		for(x=0;x<cartList.size();x++)
		{
			cart=cartList.get(x);
			if(cart.getMenu().equals(menu))
			{
				break;
			}
				
		}
		if(x==cartList.size())
		{
			cart=new Cart();
			cart.setMenu(menu);
			cart.setNumber(number);
			cart.setPrice(menu.getPrice());
			cartList.add(cart);
		}
		else
		{
			cart.setNumber(cart.getNumber()+number);
			cart.setPrice(cart.getNumber()*cart.getMenu().getPrice());
		}
		return cartList;
	}

	

}
