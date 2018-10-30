package com.Services;

import java.util.ArrayList;

import com.beans.Cart;
import com.beans.MenuItem;

public interface AddToCartInterface {
	ArrayList<Cart> AddToCart(ArrayList<Cart> CartList,MenuItem menu, int number);

}
