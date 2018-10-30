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

import com.Providers.AddToCartProvider;
import com.Providers.RemoveFromCartProvider;
import com.Services.AddToCartInterface;
import com.Services.RemoveFromCartInterface;
import com.beans.Cart;


public class CalculateBill extends HttpServlet {
	private static final long serialVersionUID = 1L;
	RemoveFromCartInterface businessLogicInterface;
	ArrayList<Cart> cartList;
       
    
    public CalculateBill() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    public void init(ServletConfig config) throws ServletException {
		super.init(config);
		// TODO Auto-generated method stub
		cartList=new ArrayList<>();
		businessLogicInterface=RemoveFromCartProvider.getObject();
		
		
	}

	//servlet controller to calculate total price and discount.
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session=request.getSession(false);
		if(session!=null)
		{
			ArrayList<Cart> cartList=(ArrayList<Cart>) session.getAttribute("cartList");
			float total=0.0f;
			String discount="0%";
			if(cartList!=null)
			{
				for(int x=0;x<cartList.size();x++)
				{
					total+=cartList.get(x).getPrice();
				}
				if(total>1000)
				{
					discount="10%";
					total=total-total*0.1f;
				}
				session.setAttribute("total", total);
				session.setAttribute("discount", discount);
				RequestDispatcher rd=request.getRequestDispatcher("ViewCart.jsp");
				rd.forward(request, response);
			}
			else
			{
				request.setAttribute("msg", "No item is added in the cart!");
				RequestDispatcher rd=request.getRequestDispatcher("Location.jsp");
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
