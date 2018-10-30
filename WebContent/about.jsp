<%@ page language="java" contentType="text/html; charset=ISO-8859-1" import="com.beans.Login"
    pageEncoding="ISO-8859-1"%>
<!-- for the opening of the about page -->
<html>
<head>
<meta charset="utf-8" />
<title>About</title>
<link href="./css/bootstrap.css" rel="stylesheet" />
<link href="./css/style.css" rel="stylesheet" />
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
												
											<li ><a href="#">About us</a>
												<ul>
													<li ><a href="#">Locations</a>
														</li>
												</ul></li>
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
					
										
												<li>
													<a href="CalculateBill">View Cart</a></li>
											<li><a href="contact.jsp">Contact Us</a></li>
											<%Login login=(Login)session.getAttribute("login"); %>
											<li><a><%=login.getUsername()%></a></li>
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
												
											<li ><a href="#">About us</a>
												<ul>
													<li ><a href="#">Locations</a>
														</li>
												</ul></li>
								
											<li class="dropdown"><a href="#">Account</a>
												<ul>
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
												</ul>
												</ul>
											</li>
											
											
											
												<li><a href="CalculateBill">View Cart</a></li>
												<li><a href="CalculateBill">View Cart</a></li>
											<li><a href="contact.jsp">Contact Us</a></li>
						
											<li><a><%=login.getUsername()%></a></li>
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
				<div class="title">Welcome</div>
				<h2>Story</h2>
			</div>
		</section>
		<section class="table-section">
			<div class="auto-container">
				<div class="row clearfix">
					<div class="image-column col-md-6 col-sm-12 col-xs-12">
						<div class="row clearfix">
							<div class="column col-md-6 col-sm-6 col-xs-6">
								<div class="image">
									<img src="./images/resource/table-1.jpg" alt="" />
								</div>
							</div>
							<div class="column col-md-6 col-sm-6 col-xs-6">
								<div class="image">
									<img src="./images/resource/table-2.jpg" alt="" />
								</div>
							</div>
						</div>
					</div>
					<div class="content-column col-md-6 col-sm-12 col-xs-12">
						<div class="sec-title centered">
							<div class="title">Always Delicious</div>
							<h2>Get The Best</h2>
						</div>
						<div class="text">The Fudi offers contemporary Indian cooking delivering delicious food at your doorstep. We champion the use of fresh produce from local suppliers and our seasonal menus are created by our passionate kitchen team. Expect a journey of exciting flavours and textures showcasing the best of our produce</div>
					</div>
				</div>
			</div>
		</section>
		<section class="carousel-section">
			<div class="auto-container">
				<div class="single-item-carousel owl-theme owl-carousel">
					<div class="slide">
						<img src="./images/4.jpg" alt="" />
					</div>
					<div class="slide">
						<img src="./images/2.jpg" alt="" />
					</div>
					<div class="slide">
						<img src="./images/3.jpg" alt="" />
					</div>
				</div>
			</div>
		</section>
		<section class="unique-section">
			<div class="auto-container">
				<div class="row clearfix">
					<div class="column col-md-3 col-sm-6 col-xs-12">
						<h2>unique</h2>
					</div>
					<div class="column col-md-6 col-sm-12 col-xs-12">
						<div class="text">A carefully chosen menu list offers choices to suit all pockets and palates.</div>
					</div>
					<div class="column col-md-3 col-sm-6 col-xs-12">
						<h3>Facts</h3>
						<div class="fact-text">
							17 months of surveying <br />120 days of construction
						</div>
					</div>
				</div>
			</div>
		</section>
		<section class="place-section"
			style="background-image: url(./images/background/7.jpg);">
			<div class="auto-container">
				<div class="row clearfix">
					<div class="column col-md-6 col-sm-12 col-xs-12"></div>
					<div class="content-column col-md-6 col-sm-12 col-xs-12">
						<div class="content-inner">
							<h2>The Place</h2>
							<div class="text">Unique experience for the Holidays at
								Monde. The Fudi offers contemporary Indian cooking delivering delicious food at your doorstep. We champion the use of fresh produce from local suppliers and our seasonal menus are created by our passionate kitchen team. Expect a journey of exciting flavours and textures showcasing the best of our produce.</div>
						</div>
					</div>
				</div>
			</div>
		</section>
			<section class="testimonial-section"
			style="background-image: url(images/background/3.jpg);">
			<div class="auto-container">
				<div class="single-item-carousel owl-carousel owl-theme">
					<div class="testimonial-block">
						<div class="inner-box">
							<div class="text">"Tawa Paratha also known as plain parathas are Indian flatbread that are crisper and flakier version of phulka's and are traditionally cooked in ghee on an iron skillet. Serve it with Dal and sabzi of your choice."</div>
							
						</div>
					</div>
					<div class="testimonial-block">
						<div class="inner-box">
							<div class="text">ÄúDal makhaniô popularity is due in part to its versatility in a meal: the rich vegetarian dish can be served as a main meal, included as part of a buffet (thali), or used as an accompaniment to a meal.
Äù</div>
							
						</div>
					</div>
					<div class="testimonial-block">
						<div class="inner-box">
							<div class="text">Basmati is a variety of long, slender-grained aromatic rice which is traditionally from the Indian subcontinent.‚Äù</div>
							
						</div>
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

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

</body>
</html>



