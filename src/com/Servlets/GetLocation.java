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

import com.Providers.GetLocationProvider;
import com.Providers.SignInProvider;
import com.Services.GetLocationInterface;
import com.beans.Location;


/**
 * Servlet implementation class Location
 */
public class GetLocation extends HttpServlet {
	private static final long serialVersionUID = 1L;
	GetLocationInterface businessLogicInterface;
	Connection con;
       
   
    public GetLocation() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    
    public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
		super.init(config);
		con=(Connection) getServletContext().getAttribute("DbConnection");
		businessLogicInterface=GetLocationProvider.getObject(con);
	}

	//servlet controller to get the location list
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		HttpSession session=request.getSession(false);
		if(session!=null)
		{
			ArrayList<Location> LocationList=businessLogicInterface.getLocation();
			session.setAttribute("LocationList", LocationList);
			RequestDispatcher rd=request.getRequestDispatcher("Location.jsp");
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
