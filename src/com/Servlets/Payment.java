package com.Servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAOInterfaces.PaymentDaoInterface;
import com.Providers.PaymentProvider;
import com.Providers.SignInProvider;
import com.Services.PaymentInterface;
import com.beans.Card;
import com.beans.User;



public class Payment extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Connection con;
	PaymentInterface businessLogicInterface;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Payment() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
		super.init(config);
		con=(Connection) getServletContext().getAttribute("DbConnection");
		businessLogicInterface=PaymentProvider.getObject(con);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	//servlet controller after debit card payment
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session=request.getSession(false);
		if(session!=null)
		{
			PrintWriter out=response.getWriter();
			int number=Integer.parseInt(request.getParameter("cardNumber"));
			int pin=Integer.parseInt(request.getParameter("pin"));
			Card card=new Card(number,pin);
			if(businessLogicInterface.validate(card))
			{

				RequestDispatcher rd=request.getRequestDispatcher("OrderConfirmLog");
				rd.forward(request, response);
			}
			else
			{
				String msg="Invalid credentials!!";
				request.setAttribute("msg", msg);
				RequestDispatcher rd=request.getRequestDispatcher("Payment.jsp");
				rd.include(request, response);
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
