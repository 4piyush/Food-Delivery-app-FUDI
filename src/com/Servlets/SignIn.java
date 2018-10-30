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
import javax.servlet.http.HttpSession;

import com.Providers.SignInProvider;
import com.Providers.SignUpProvider;
import com.ServiceImpl.SignInImpl;
import com.Services.SignInInterface;
import com.beans.Login;

/**
 * Servlet implementation class SignIn
 */
@WebServlet("/SignIn")
public class SignIn extends HttpServlet {
	private static final long serialVersionUID = 1L;
	SignInInterface businessLogicInterface;
	Connection con;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SignIn() {
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
		businessLogicInterface=SignInProvider.getObject(con);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	
	//servlet controller for signIn management
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Login login=(Login)request.getAttribute("login");
		if(businessLogicInterface.validate(login))
		{
			HttpSession session=request.getSession(true);
			session.setAttribute("login", login);
			RequestDispatcher rd=request.getRequestDispatcher("/LocationLog");
			rd.forward(request, response);
		}
		else
		{
			String msg="Invalid credentials";
			request.setAttribute("msg", msg);
			RequestDispatcher rd=request.getRequestDispatcher("SignIn.jsp");
			rd.include(request, response);	
		}
		
	}

}
