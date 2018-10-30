<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%@page import="java.util.ArrayList,com.beans.Cart" language="java"  %>
<%if(session!=null)
		{
			
			if(session.getAttribute("cartList")!=null)
			{
				ArrayList<Cart>cartList=(ArrayList<Cart>)session.getAttribute("cartList");
				cartList.clear();
				session.setAttribute("cartList",cartList);

				
			}
			
			session.invalidate();
			
			
			
%>
<jsp:forward page="SignIn.jsp"></jsp:forward>
<% 		
		}
		else
		{
		%>
			<jsp:forward page="SignIn.jsp"></jsp:forward>
		<%
		}

%>
		
</body>
</html>