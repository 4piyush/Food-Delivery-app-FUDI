<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title> UserRegistration </title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Credit Login / Register Form Responsive Widget,Login form widgets, Sign up Web forms , Login signup Responsive web form,Flat Pricing table,Flat Drop downs,Registration Forms,News letter Forms,Elements" />
<script type="text/javascript" src="js/SignUp.js"></script>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="application/x-javascript">
 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); }
</script>
<!-- Custom Theme files -->
<link href="css/font-awesome.min.css" rel="stylesheet" type="text/css" media="all">
<link href="css/popuo-box.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style1.css" rel="stylesheet" type="text/css" media="all" />
<!-- //Custom Theme files -->
<!-- web font -->
<link href="//fonts.googleapis.com/css?family=Oswald:400,700" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">

<!-- //web font -->
</head>
<body>
</br>
</br>

<%if(request.getAttribute("msg")!=null)
	{
	%>
	<div class="alert alert-danger alert-dismissible">
	<%=request.getAttribute("msg") %>
	</div>
	<%
	}%>	
<div class="main-agileits">
<!--form-stars-here-->
		<div class="form-w3-agile">
			
			<form name="form1" action="SignUpLog" method="post" onsubmit="return validate()">
			<img src="images/Fudilogo.png" style="margin-left: 100px;">
			<h1 style="margin-top: -70px;margin-left: 90px">FUDI</h1>
				<div class="form-sub-w3">
					<input type="text" name="username" placeholder="username " />
				<div class="icon-w3">
					<i class="fa fa-user" aria-hidden="true"></i>
				</div>
				</div>
				<div class="form-sub-w3">
					<input type="password" name="password" placeholder="Password" />
				<div class="icon-w3">
					<i class="fa fa-unlock-alt" aria-hidden="true"></i>
				</div>
				</div>
				<div class="form-sub-w3">
					<input type="password" name="password_confirm" placeholder="Confirm Password "  />
				<div class="icon-w3">
					<i class="fa fa-unlock-alt" aria-hidden="true"></i>
				</div>
				</div>
				<div class="form-sub-w3">
					<input type="email" name="email" placeholder="email "  />
				<div class="icon-w3">
					<i class="fa fa-envelope" aria-hidden="true"></i>
					
				</div>
				</div>
				<div class="form-sub-w3">
					<input type="text" name="number" placeholder="User number " pattern="[1-9]{1}[0-9]{9}" />
				<div class="icon-w3">
					<i class="fa fa-phone" aria-hidden="true"></i>
				</div>
				</div>
				<div class="form-sub-w3">
					<input type="text" name="address" placeholder="Address"  />
				<div class="icon-w3">
					<i class="fa fa-list-alt" aria-hidden="true"></i>
				</div>
				</div>
				<div class="form-sub-w3">
					 <p style="color: white">Security Question</p><br>
					 <select name="security_ques">
						<option>
							what is the name of your first school?
						</option>
						<option>
							what is the name of your pet?
						</option>

					</select>
				
				</div>
				<div class="form-sub-w3">
					<input type="text" name="security_ans" placeholder="your answer" />
				<div class="icon-w3">
					<i class="fa fa-pencil" aria-hidden="true"></i>
				</div>
				</div>
				</div>
				<div class="submit-w3l">
					<input type="submit" value="Login" name="submit">
				</div>
			</form>
		</div>
<!--//form-ends-here-->
</div>
<!-- copyright -->
	<div class="copyright w3-agile">
		<p> © 2018 / Register Form . All rights reserved | Design by Mohit Rathore</p>
	</div>
	<!-- //copyright --> 
	<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
	<!-- pop-up-box -->  
		<script src="js/jquery.magnific-popup.js" type="text/javascript"></script>
	<!--//pop-up-box -->
	

	
</body>
</html>