package com.Servlets;

import java.io.IOException;
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

import com.Providers.OrderConfirmationProvider;
import com.Providers.SignInProvider;
import com.Services.OrderConfirmationInterface;
import com.beans.Cart;

/**
 * Servlet implementation class OrderConfirmation
 */
@WebServlet("/OrderConfirmation")
public class OrderConfirmation extends HttpServlet {
	private static final long serialVersionUID = 1L;
	OrderConfirmationInterface businessLogicInterface;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OrderConfirmation() {
        super();
        // TODO Auto-generated constructor stub
        
    }
    public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
		super.init(config);
		businessLogicInterface=OrderConfirmationProvider.getObject();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session=request.getSession(false);
		if(session!=null)
		{
			String date=businessLogicInterface.orderConfirm();
			String orderId=session.getId();
			orderId=orderId.substring(orderId.length()-4,orderId.length());
			session.setAttribute("orderId",orderId);
			session.setAttribute("date", date);
			RequestDispatcher rd=request.getRequestDispatcher("OrderConfirm.jsp");
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
