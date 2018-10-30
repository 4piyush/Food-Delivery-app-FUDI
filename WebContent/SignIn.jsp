<!DOCTYPE html>
<html>
<head>
<title> Login</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
	<script type="text/javascript" src="js/SignIn.js"></script>
<!-- Custom Theme files -->
<link href="css/font-awesome.min.css" rel="stylesheet" type="text/css" media="all">
<link href="css/popuo-box.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style1.css" rel="stylesheet" type="text/css" media="all" />
<!-- //Custom Theme files -->
<!-- web font -->
<link href="//fonts.googleapis.com/css?family=Oswald:400,7
00" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">

<!-- //web font -->
</head>
<body>
</br>
</br>
<div class="container">
	
<%if(request.getAttribute("msg")!=null)
	{
	%>
	<div class="alert alert-danger alert-dismissible">
	<%=request.getAttribute("msg") %>
	</div>
	<%
	}%>	

</div>
<div class="main-agileits">
<!--form-stars-here-->
		<div class="form-w3-agile">
			<h2>login form</h2>
			<form name="form1" action="SignInLog" method="post" onsubmit="return validate()">
			<img src="images/Fudilogo.png" style="margin-left: 100px;">
			<h1 style="margin-top: -70px;margin-left: 90px">FUDI</h1>
				<div class="form-sub-w3">
					<input type="text" name="username" placeholder=" username "  />
				<div class="icon-w3">
					<i class="fa fa-user" aria-hidden="true"></i>
				</div>
				</div>
				<div class="form-sub-w3">
					<input type="password" name="password" placeholder="Password" required="" />
				<div class="icon-w3">
					<i class="fa fa-unlock-alt" aria-hidden="true"></i>
				</div>
				</div>
				<p class="p-bottom-w3ls">Are you new to FUDI?<a  href="SignUp.jsp">  Register here</a></p>
				
				<div class="submit-w3l">
					<input type="submit" value="Login">
				</div>
			</form>
		</div>
<!--//form-ends-here-->
</div>

<!-- copyright -->
	<div class="copyright w3-agile">
		<p> © 2017 Credit Login / Register Form . All rights reserved | Design by <a href="http://w3layouts.com/" target="_blank">W3layouts</a></p>
	</div>
	<!-- //copyright --> 
	<!-- //javascript --> 
	<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
	<!-- pop-up-box -->  
		<script src="js/jquery.magnific-popup.js" type="text/javascript"></script>
	<!--//pop-up-box -->
	
	<div class="container">
	

</div>
	
</body>
</html>