<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
<meta charset="utf-8" />
<title>Contact</title>
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
												
											<li ><a href="about.jsp">About us</a>
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
				<div class="title">Get in Touch</div>
				<h2>Contact</h2>
			</div>
		</section>
		<section class="contact-page-section">
			<div class="outer-container clearfix">
				<div class="map-column">
					<div class="map-outer">
						<div class="map-canvas" data-zoom="12" data-lat="18.4575° N"
							data-lng=" 73.8677° E" data-type="roadmap" data-hue="#ffc400"
							data-title="Envato" data-icon-path="images/icons/map-marker.png"
							data-content="Melbourne VIC 3000, Australia<br><a href='mailto:info@youremail.com'>info@youremail.com</a>">
						</div>
					</div>
				</div>
				<div class="form-column">
					<div class="inner-column">
						<h2>Get In touch</h2>
						<div class="contact-form alternate">
							<form method="post" action="sendemail.php" id="contact-form" />
							<div class="row clearfix">
								<div class="form-group">
									<label>Name *</label> <input type="text" name="username"
										placeholder="" required="" />
								</div>
								<div class="form-group">
									<label>Email *</label> <input type="email" name="email"
										placeholder="" required="" />
								</div>
								<div class="form-group">
									<label>Message *</label>
									<textarea name="message" placeholder=""></textarea>
								</div>
								<div class="form-group">
									<button class="theme-btn btn-style-two" type="submit"
										name="submit-form">SUbmit</button>
								</div>
							</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</section>
		<section class="telephone-reserve">
			<div class="auto-container">
				<h3> For Contact Us</h3>
				<div class="text">Please Call 9857658429</div>
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
	<script src="./js/validate.js"></script>
	<script src="./js/script.js"></script>
	<script
		src="https://maps.googleapis.com/maps/api/js?v=3&key=AIzaSyBf4UvvTN2QLWT4BiewE_3fEzK3QrRsLJE"></script>
	<script src="./js/map-script.js"></script>
</body>
</html>
