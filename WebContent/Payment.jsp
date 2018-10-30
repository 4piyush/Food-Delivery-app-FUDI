<!DOCTYPE html>
<html>
<head>
<title> Payment</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
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
<div class="main-agileits">
<%if(request.getAttribute("msg")!=null)
	{
	%>
	<div class="alert alert-danger alert-dismissible">
	<%=request.getAttribute("msg") %>
	</div>
	<%
	}%>	

<!--form-stars-here-->
		<div class="form-w3-agile">
			<h2>PAYMENT</h2>
			<form action="PaymentLog" method="post">
			<img src="images/Fudilogo.png" style="margin-left: 100px;">
			<h1 style="margin-top: -70px;margin-left: 90px">FUDI</h1>
				<div class="form-sub-w3">
					<input type="text" name="cardNumber" placeholder= "Debit Card Number " required="" />
				<div class="icon-w3">
					<i class="fa fa-user" aria-hidden="true"></i>
				</div>
				</div>
				<div class="form-sub-w3">
					<input type="password" name="pin" placeholder="Enter your Pin" required="" />
				<div class="icon-w3">
					<i class="fa fa-unlock-alt" aria-hidden="true"></i>
				</div>
				</div>
				
				<div class="submit-w3l">
					<input type="submit" value="PAY">
				</div>
			</form>
		</div>
<!--//form-ends-here-->
</div>

<!-- copyright -->
	<div class="copyright w3-agile">
		<p> © 2018 Payment Sercured by Norton. All rights reserved | Design by Mohit Rathore</p>
	</div>
	<!-- //copyright --> 
	<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
	<!-- pop-up-box -->  
		<script src="js/jquery.magnific-popup.js" type="text/javascript"></script>
	<!--//pop-up-box -->
	
</body>
</html>