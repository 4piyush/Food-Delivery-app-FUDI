<%@ page language="java" import="java.util.ArrayList,com.beans.MenuItem" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>Item Information</title>
<link href="./css/bootstrap.css" rel="stylesheet" />
<link href="./css/style.css" rel="stylesheet" />
<link href="./css/jquery.bootstrap-touchspin.css" rel="stylesheet" />
<link href="./css/responsive.css" rel="stylesheet" />
<link rel="shortcut icon" href="./images/favicon.png"
	type="image/x-icon" />
<link rel="icon" href="./images/favicon.png" type="image/x-icon" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>
<body>
<%
		int i = Integer.parseInt(request.getParameter("i"));
		ArrayList<MenuItem> MenuList = (ArrayList<MenuItem>) session.getAttribute("MenuList");
		MenuItem menu = MenuList.get(i);
		session.setAttribute("menu", menu);
%>
	<div class="page-wrapper">
		<div class="preloader"></div>
		<header class="main-header header-style-five">
			<div class="header-upper">
				<div class="auto-container">
					<div class="inner-container clearfix">
						<div class="logo-outer">
							<div class="logo">
								<a href="./index.jsp"><img src="./images/logo-bot.png" alt=""
									title="" /></a>
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
												</li>
											<li ><a href="about.jsp">About us</a>
												</li>
											
											<li class="dropdown"><a href="#">Account</a>
												<ul>
													<%if(session.getAttribute("login")==null) 
												{%>
													<li><a href="SignUp.jsp">SignUp</a></li>
													<li><a href="SignIn.jsp">LogIn</a></li>
												<%
												}
												else
												{
												%>
													<li><a href="LogOut.jsp">LogOut</a></li>
												<%
												}%>
												
												</ul></li>
												<li><a href="CalculateBill">View Cart</a></li>
											<li><a href="./contact.jsp">Contact Us</a></li>
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
						<a href="./index.jsp" class="img-responsive" title="Tali"><img
							src="./images/logo-bot.png" alt="Tali" title="Tali" /></a>
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
												</li>
											<li ><a href="about.jsp">About us</a>
												</li>
											
											<li class="dropdown"><a href="#">Account</a>
												<ul>
													<%if(session.getAttribute("login")==null) 
												{%>
													<li><a href="SignUp.jsp">SignUp</a></li>
													<li><a href="SignIn.jsp">LogIn</a></li>
												<%
												}
												else
												{
												%>
													<li><a href="LogOut.jsp">LogOut</a></li>
												<%
												}%>
												
												</ul></li>
												<li><a href="CalculateBill">View Cart</a></li>
											<li><a href="./contact.jsp">Contact Us</a></li>
										</ul>
									</div>
								</nav>
								
					</div>
				</div>
			</div>
		</header>
		<section class="shop-single-section">
			<div class="auto-container">
				<div class="page-tag">
					<span class="fa fa-home"></span>
				</div>
				<section class="product-details">
					<div class="basic-details">
						<div class="row clearfix">
							<div class="image-column col-md-6 col-sm-12 col-xs-12">
								<figure class="image-box">
									<a href="" class="lightbox-image"><img
										src="./MenuImages/<%=menu.getImage()%>" alt="" /></a>
								</figure>
							</div>
							<div class="info-column col-md-6 col-sm-12 col-xs-12">
								<div class="details-header">
									
									<div class="item-price"><%=menu.getPrice()%></div>
								</div>
								<div class="text"><%=menu.getDescription()%></div>
							
								<form name="form1" action="AddToCartLog" method="post">
									
										
		
								
									<input type="submit" class="theme-btn btn-style-two add-to-cart" value="Add To Cart">
								</form>
							</div>
						</div>
					</div>
					
				</section>
				<div class="related-posts">
					<h2>You MAY ALSO LIKE</h2>
					<div class="row clearfix">
						<%=session.getAttribute("LocationName")%>
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
										9483726718 <br />katraj,pune <br />7piyushmishra@gmail.com,<br>
										mohitrathore537@gmail.com
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
</body>
</html>
