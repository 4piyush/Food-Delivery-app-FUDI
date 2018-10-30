package com.Servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Providers.AddToCartProvider;
import com.Services.AddToCartInterface;
import com.beans.Cart;
import com.beans.MenuItem;


/**
 * Servlet implementation class AddCart
 */
@WebServlet("/AddCart")
public class AddToCart extends HttpServlet {
	private static final long serialVersionUID = 1L;
	AddToCartInterface businessLogicInterface;
	Connection con;
	ArrayList<Cart> cartList;
  
    public AddToCart() {
        super();
        // TODO Auto-generated constructor stub
        
    }

	public void init(ServletConfig config) throws ServletException {
		super.init(config);
		// TODO Auto-generated method stub
		cartList=new ArrayList<>();
		businessLogicInterface=AddToCartProvider.getObject();
		
		
	}

	public void destroy() {
		// TODO Auto-generated method stub
	}

	//servlet controller after the item is added in the cart
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out=response.getWriter();
		HttpSession session=request.getSession(false);
		if(session!=null)
		{
			
			
			MenuItem menu=(MenuItem)session.getAttribute("menu");
			int number1=1;
			cartList=businessLogicInterface.AddToCart(cartList, menu,number1);
			session.setAttribute("cartList", cartList);
			request.setAttribute("msg","Item added in the cart successfully");
			RequestDispatcher rd=request.getRequestDispatcher("MenuItems.jsp");
			rd.forward(request, response);
			
			
		}
		else
		{
			request.setAttribute("msg","session time out");
			RequestDispatcher rd=request.getRequestDispatcher("SignIn.jsp");
			rd.forward(request, response);
		}
	

	}

}
