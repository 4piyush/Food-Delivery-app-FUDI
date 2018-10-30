package com.Services;

import java.util.ArrayList;

import com.beans.Cart;

public interface RemoveFromCartInterface {
	public boolean removeFromCart(ArrayList<Cart> cartList,int cartIndex);
	
}
