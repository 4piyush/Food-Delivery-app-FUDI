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

public class FilterValidate implements Filter {

    public FilterValidate() {
        // TODO Auto-generated constructor stub
    }

	
	public void destroy() {
		// TODO Auto-generated method stub
	}

	
	//SignUp Constraint Validation
	public String validate(String username,String password,String email,String number,String address,String security_ques,String security_ans)
	{
		if(username.equals(""))
			return "username cannot be empty";
		if(password.equals(""))
			return "password cannot be empty"; 
		if(email.equals(""))
			return "email cannot be empty"; 
		if(number.equals(""))
			return "mobile number cannot be empty"; 
		if(address.equals(""))
			return "address cannot be empty"; 
		if(username.length()>20)
			return "username cannot exceed 20 characters";
		if(password.length()>20)
			return "password cannot exceed 20 characters";
		return "";
		
	}
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		// TODO Auto-generated method stub
		// place your code here

		// pass the request along the filter chain
		PrintWriter out=response.getWriter();
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		String email=request.getParameter("email");
		String number=request.getParameter("number");
		String address=request.getParameter("address");
		String security_ques=request.getParameter("security_ques");
		String security_ans=request.getParameter("security_ans");
		
		String msg;
		if((msg=validate(username,password,email,number,address,security_ques,security_ans))!="")
		{
			RequestDispatcher rd=request.getRequestDispatcher("SignUp.jsp");
			rd.include(request, response);
			out.println("<br><br>");
			out.println(msg);
			return;
		}
		else
		{
			User user=new User();
			user.setUsername(username);
			user.setEmail(email);
			user.setNumber(number);
			user.setAddress(address);
			user.setSecurity_ques(security_ques);
			user.setSecurity_ans(security_ans);
			Login login=new Login();
			login.setUsername(username);
			login.setPassword(password);
			request.setAttribute("user",user);
			request.setAttribute("login",login);
			chain.doFilter(request, response);
			
		}

		
	}

	
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
