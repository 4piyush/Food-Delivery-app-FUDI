<%@ page language="java" import="java.util.ArrayList,com.beans.MenuItem" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>Menu</title>
<link href="./css/bootstrap.css" rel="stylesheet" />
<link href="./css/style.css" rel="stylesheet" />
<link href="./css/responsive.css" rel="stylesheet" />
<link rel="shortcut icon" href="./images/favicon.png"
	type="image/x-icon" />
<link rel="icon" href="./images/favicon.png" type="image/x-icon" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%ArrayList<MenuItem> MenuList=(ArrayList<MenuItem>)session.getAttribute("MenuList"); %>
</head>
<body>
<div class="container">
	<%if(request.getAttribute("msg")!=null)
	{
	%>
	<div class="alert alert-success alert-dismissible">
	<%=request.getAttribute("msg") %>
	</div>
	<%
	}%>	

	
	


</div>
	<div class="page-wrapper">
		<div class="preloader"></div>
		<header class="main-header">
			<div class="header-upper">
				<div class="auto-container">
					<div class="inner-container clearfix">
						<div class="logo-outer">
							<div class="logo">
								<a href="index.jsp"><img src="images/Fudilogo.png" alt=""
									title="" ></a>
							</div>
						</div>
						<div class="upper-right clearfix">
							<div class="nav-outer clearfix">
								<nav class="main-menu">
									<div class="navbar-header">
										<button type="button" class="navbar-toggle"
											data-toggle="collapse" data-target=".navbar-collapse">
											<span class="icon-bar"></span> <span class="icon-bar"></span>
											<span class="icon-bar"></span>
										</button>
									</div>
									<div class="navbar-collapse collapse clearfix">
										<ul class="navigation clearfix">
											<li><a href="index.jsp">Home</a>
												
											<li ><a href="about.jsp">About us</a>
												</li>
													
											<li class="dropdown"><a href="#">Account</a>
												<ul>
													<li><a href="LogOut.jsp">Logout</a></li>
												</ul></li>
												<li><a href="CalculateBill">View Cart</a></li>
											<li><a href="contact.jsp">Contact Us</a></li>
										</ul>
									</div>
								</nav>
								<div class="more-options">
									<ul class="social-icon-one">
										<li><a href="#"><span class="fa fa-twitter"></span></a></li>
										<li><a href="#"><span class="fa fa-instagram"></span></a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="sticky-header">
				<div class="auto-container clearfix">
					<div class="logo pull-left">
						<a href="index.jsp" class="img-responsive" title="Tali"><img
							src="images/logo-bot.png" alt="Tali" title="Tali"></a>
					</div>
					<div class="right-col pull-right">
						<nav class="main-menu">
							<div class="navbar-header">
								<button type="button" class="navbar-toggle"
									data-toggle="collapse" data-target=".navbar-collapse">
									<span class="icon-bar"></span> <span class="icon-bar"></span> <span
										class="icon-bar"></span>
								</button>
							</div>
							<div class="navbar-collapse collapse clearfix">
								<ul class="navigation clearfix">
											<li><a href="index.jsp">Home</a>
												
											<li ><a href="about.jsp">About us</a>
												</li>
											<li class="dropdown"><a href="#">Account</a>
												<ul>
												<li><a href="LogOut.jsp">Logout</a></li>
												</ul></li>
											<li><a href="CalculateBill">View Cart</a></li>
											<li><a href="contact.jsp">Contact Us</a></li>
										</ul>
							</div>
						</nav>
					</div>
				</div>
			</div>
		</header>
		
		<section class="page-title"
			style="background-image: url(./images/background/6.jpg);">
			<div class="auto-container">
				<div class="title">Get it Home</div>
				<h2>Order Now</h2>
			</div>
		</section>
		
		<section class="order-page-section">
			<div class="auto-container">
			
				<div class="row clearfix">
				<h2 style="font-size: 30px;margin-left:550px;margin-top:-70px;"><b><%=session.getAttribute("LocationName")%></b></h2>
				<%for(int x=0;x<MenuList.size();x++)
			{
%>
					<div class="product-block col-md-4 col-sm-6 col-xs-12">
						<div class="inner-box">
							<div class="image">
								<img src="./MenuImages/<%=MenuList.get(x).getImage()%>" alt="image not available" />
								<div class="overlay-box">
									<a href="#" class="go"><p class="theme-btn btn-style-two">Add To Cart</p></a>
								</div>
							</div>
							<div class="lower-box">
								<h3>
									<%=MenuList.get(x).getName()%>
								</h3>
								<div class="price"><%=MenuList.get(x).getPrice()%></div>
							</div>
						</div>
					</div>
					<%	
			}
%>
					
				</div>
	

				
					
			
			</div>
		</section>
		<section class="footer-style-two">
			<div class="auto-container">
				<div class="widgets-section">
					<div class="row clearfix">
						<div class="column col-md-3 col-sm-6 col-xs-12">
							<div class="logo-widget footer-widget">
								<div class="inner-box">
									<div class="logo">
										<a href="./index.jsp"><img src="./images/Fudilogo.png" alt="" /></a>
									</div>
									<div class="text">
										9483726718 <br />katraj,pune <br />7piyushmishra@gmail.com,<br>mohitrathore537@gmail.com
									</div>
								</div>
							</div>
						</div>
						<div class="column col-md-6 col-sm-12 col-xs-12">
							<div class="newsletter-widget footer-widget">
								<p style="font-size: 80px">FUDI</p>
								<ul class="social-icon-three">
									<li><a href="#"><span class="fa fa-twitter"></span></a></li>
									<li><a href="#"><span class="fa fa-instagram"></span></a></li>
									<li><a href="#"><span class="fa fa-facebook"></span></a></li>
									<li><a href="#"><span class="fa fa-envelope-o"></span></a></li>
								</ul>
							</div>
						</div>
						<div class="column col-md-3 col-sm-6 col-xs-12">
							<div class="instagram-widget footer-widget">
								<h2>Instagram</h2>
								<div class="clearfix">
									<figure class="image">
										<a href="./images/2.jpg" class="lightbox-image"><img
											src="./images/2.jpg" alt="" /></a>
									</figure>
									<figure class="image">
										<a href="./images/3.jpg" class="lightbox-image"><img
											src="./images/3.jpg" alt="" /></a>
									</figure>
									<figure class="image">
										<a href="./images/4.jpg" class="lightbox-image"><img
											src="./images/4.jpg" alt="" /></a>
									</figure>
									<figure class="image">
										<a href="./images/5.jpg" class="lightbox-image"><img
											src="./images/5.jpg" alt="" /></a>
									</figure>
									<figure class="image">
										<a href="./images/6.jpg" class="lightbox-image"><img
											src="./images/6.jpg" alt="" /></a>
									</figure>
									<figure class="image">
										<a href="./images/7.jpg" class="lightbox-image"><img
											src="./images/7.jpg" alt="" /></a>
									</figure>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="copyright">Copyright &copy; Mohit Rathore 2018. All Rights
					Reserved.</div>
			</div>
		</section>
	</div>
	<div class="scroll-to-top scroll-to-target" data-target="html">
		<span class="icon fa fa-angle-up"></span>
	</div>
	<script src="./js/jquery.js"></script>
	<script src="./js/bootstrap.min.js"></script>
	<script src="./js/jquery.fancybox.pack.js"></script>
	<script src="./js/jquery.fancybox-media.js"></script>
	<script src="./js/owl.js"></script>
	<script src="./js/appear.js"></script>
	<script src="./js/wow.js"></script>
	<script src="./js/script.js"></script>
	<script src="MenuItems.js"></script>
</body>
</html>
