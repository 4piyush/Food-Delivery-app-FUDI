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
import com.Providers.MenuItemsProvider;
import com.Services.MenuItemsInterface;
import com.beans.Location;

/**
 * Servlet implementation class MenuItems
 */
@WebServlet("/MenuItems")
public class MenuItems extends HttpServlet {
	private static final long serialVersionUID = 1L;
	MenuItemsInterface businessLogicInterface;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MenuItems() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
		super.init(config);
		Connection con=(Connection) getServletContext().getAttribute("DbConnection");
		businessLogicInterface=MenuItemsProvider.getObject(con);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	//servlet controller to get the menu list
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out=response.getWriter();
		HttpSession session=request.getSession(false);
		if(session!=null)
		{
			int index=Integer.parseInt(request.getParameter("j"));
			ArrayList<Location> LocationList=(ArrayList<Location>)session.getAttribute("LocationList");
			String location=LocationList.get(index).getLocation();
			session.setAttribute("LocationName", location);
			session.setAttribute("MenuList",businessLogicInterface.getMenuItems());
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
