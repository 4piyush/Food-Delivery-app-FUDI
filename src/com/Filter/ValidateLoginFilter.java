package com.Filter;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

import com.beans.Login;
import com.beans.User;

/**
 * Servlet Filter implementation class ValidateLoginFilter
 */
@WebFilter("/ValidateLoginFilter")
public class ValidateLoginFilter implements Filter {

    /**
     * Default constructor. 
     */
    public ValidateLoginFilter() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	
	//for Login Constraint Validation
	public String validate(String username,String password)
	{
		if(username.equals(""))
			return "username cannot be empty";
		if(password.equals(""))
			return "password cannot be empty";
		if(username.length()>20)
			return "username cannot exceed 20 characters";
		if(password.length()>20)
			return "password cannot exceed 20 characters";
		return "";
		
	}
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		PrintWriter out=response.getWriter();
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		String msg=null;
		if((msg=validate(username,password))!="")
		{
		
			RequestDispatcher rd=request.getRequestDispatcher("SignIn.jsp");
			rd.include(request, response);
			out.println("<br><br>");
			out.println(msg);
			return;
		}
		else
		{
			Login login=new Login();
			login.setUsername(username);
			login.setPassword(password);
			request.setAttribute("login",login);
			chain.doFilter(request, response);
		}
		
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
