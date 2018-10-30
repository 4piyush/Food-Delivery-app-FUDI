package com.Servlets;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAOInterfaces.DaoInterface;
import com.Providers.SignUpProvider;
import com.Providers.DaoProvider;
import com.Services.SignUpInterface;
import com.beans.Login;
import com.beans.User;
	

/**
 * Servlet implementation class SignUp
 */
@WebServlet("/SignUp")
public class SignUp extends HttpServlet {
	private static final long serialVersionUID = 1L;
	SignUpInterface businessLogicInterface;
	Connection con;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SignUp() {
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
		businessLogicInterface=SignUpProvider.getObject(con);
		
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	
	//servlet controller for signUp management
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		User user=(User)request.getAttribute("user");
		Login login=(Login)request.getAttribute("login");
		if(businessLogicInterface.createUser(user,login))
		{
			String msg="User account created successfully";
			request.setAttribute("msg", msg);
			RequestDispatcher rd=request.getRequestDispatcher("SignIn.jsp");
			rd.forward(request, response);
		}
		else
		{
			String msg="User account couldn't be created!!";
			request.setAttribute("msg", msg);
			RequestDispatcher rd=request.getRequestDispatcher("SignUp.jsp");
			rd.include(request, response);
		}
		
	}

}
