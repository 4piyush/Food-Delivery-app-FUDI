package com.Servlets;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.beans.Cart;
import com.beans.DeliveryLocation;

/**
 * Servlet implementation class Address
 */
@WebServlet("/Address")
public class Address extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Address() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
    
    
    //servlet controller after address entered
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session=request.getSession(false);
		if(session!=null)
		{
			String firstName=request.getParameter("firstname");
			String lastName=request.getParameter("lastname");
			String landmark=request.getParameter("company");
			String street=request.getParameter("street");
			String city=request.getParameter("city");
			String pincode=request.getParameter("pincode");
			String state=request.getParameter("state");
			String country=request.getParameter("country");
			String mobile=request.getParameter("phone");
			String email=request.getParameter("email");
			DeliveryLocation dl=new DeliveryLocation(firstName, lastName, landmark, street, city, pincode, state, country, mobile, email);
			session.setAttribute("deliveryLocation", dl);
			RequestDispatcher rd=request.getRequestDispatcher("PaymentOptions.jsp");
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
