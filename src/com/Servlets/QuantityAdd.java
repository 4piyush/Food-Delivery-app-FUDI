package com.Servlets;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Providers.QuantityAddProvider;
import com.Services.QuantityAddInterface;
import com.beans.Cart;


public class QuantityAdd extends HttpServlet {
	private static final long serialVersionUID = 1L;
	QuantityAddInterface businessLogicInterface;
	ArrayList<Cart> cartList;
       
    
    public QuantityAdd() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    public void init(ServletConfig config) throws ServletException {
		super.init(config);
		// TODO Auto-generated method stub
		cartList=new ArrayList<>();
		businessLogicInterface=QuantityAddProvider.getObject();
		
		
	}
    
    //servlet controller to increase quantity of items in the cart
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stubresponse.getWriter().append("Served at: ").append(request.getContextPath());
		HttpSession session=request.getSession(false);
		if(session!=null)
		{
			int cartIndex=Integer.parseInt(request.getParameter("i"));

			ArrayList<Cart> cartList=(ArrayList<Cart>) session.getAttribute("cartList");
			if(businessLogicInterface.quantityAdd(cartList, cartIndex));
			{
				RequestDispatcher rd=request.getRequestDispatcher("CalculateBill");
				rd.forward(request, response);
			}
			
		}
		else
		{
			request.setAttribute("msg","session time out");
			RequestDispatcher rd=request.getRequestDispatcher("SignIn.jsp");
			rd.forward(request, response);
		}
	}

	

}
