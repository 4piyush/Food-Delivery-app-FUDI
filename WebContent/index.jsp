<!DOCTYPE html>
<html>
<head>
<!-- for the welcome page -->
<meta charset="utf-8">
<title>FUDI </title>
<link href="css/bootstrap.css" rel="stylesheet">
<link href="plugins/revolution/css/settings.css" rel="stylesheet"
	type="text/css">
<link href="plugins/revolution/css/layers.css" rel="stylesheet"
	type="text/css">
<link href="plugins/revolution/css/navigation.css" rel="stylesheet"
	type="text/css">
<link href="css/style.css" rel="stylesheet">
<link href="css/responsive.css" rel="stylesheet">
<link rel="shortcut icon" href="images/favicon.png" type="image/x-icon">
<link rel="icon" href="images/favicon.png" type="image/x-icon">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
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
											<li><a href="#">Home</a>
												
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
											<li><a href="#">Home</a>
												
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
			<div>
			<p style="font-size: 200px;margin-top: -150px;color:#ffffff ">FUDI</p>
			</div>
				<div class="title" style="margin-top: -0px">Find Your Favourite </div>
				<h2> FOOD</p>
			</div>
		</section>
		<section class="title-section">
			<div class="auto-container">
				<div class="sec-title centered">
					<h2>
						Unique Story <br>Since 1989
					</h2>
				</div>
				<div class="content">
					<div class="text">
						<p>The Fudi offers contemporary Indian cooking delivering delicious food at your doorstep. We champion the use of fresh produce from local suppliers and our seasonal menus are created by our passionate kitchen team. Expect a journey of exciting flavours and textures showcasing the best of our produce.</p><br>
						<h1>A carefully chosen menu list offers choices to suit all pockets and palates.</h1>
					</div>
					<div class="signature">fudi</div>
				</div>
			</div>
		</section>
		<section class="gallery-section">
			<div class="outer-container">
				<div class="row clearfix">
					<div class="column col-md-8 col-sm-8 col-xs-12">
						<div class="gallery-block">
							<div class="inner-box">
								<div class="image">
									<img src="images/gallery/1.jpg" alt="" /> 
									<div class="content">
										<div class="text">
											<h1></h1>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="column col-md-4 col-sm-4 col-xs-12">
						<div class="gallery-block">
							<div class="inner-box">
								<div class="image">
									<img src="images/gallery/2.jpg" alt="" /> 
									<div class="content">
										<div class="text">
											<h1></h1>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="gallery-block">
							<div class="inner-box">
								<div class="image">
									<img src="images/gallery/3.jpg" alt="" /> 
									<div class="content">
										<div class="text">
										<h1></h1>	
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<section>
			<div class="auto-container">
				<div class="sec-title centered">
				<h2 style="margin-left: 600px;margin-top: 100px;"> WE AT YOUR HOME IN 15 MINUTE</h2>
				<img src="./images/fast-delivery.png" style="margin-left: 800px;margin-top: 50px" height="80px">
				</div>
				<div>
			<img src="./images/delivery-boy-1.png" style="margin-top: -290px;padding: 50px" >
                </div>
               
                </div>	
		</section>
		<section class="call-to-action"
			style="background-image: url(images/background/2.jpg);">
			<div class="auto-container">
				<h2>Enjoy Together</h2>
			</div>
		</section>
		<section class="location-section">
			<div class="auto-container">
				<div class="sec-title centered">
					<div class="title">Location</div>
					<h2>LOACTION</h2></br>
				<a href="SignIn.jsp"><button class="theme-btn btn-style-one">Search for Location </button></a>
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
							<div class="text">“Dal makhani’s popularity is due in part to its versatility in a meal: the rich vegetarian dish can be served as a main meal, included as part of a buffet (thali), or used as an accompaniment to a meal.
”</div>
							
						</div>
					</div>
					<div class="testimonial-block">
						<div class="inner-box">
							<div class="text">“Basmati is a variety of long, slender-grained aromatic rice which is traditionally from the Indian subcontinent.”</div>
							
						</div>
					</div>
				</div>
			</div>
		</section>
		<!--<section class="information-section">
			<div class="auto-container">
				<div class="row clearfix">
					<div class="info-column col-md-4 col-sm-12 col-xs-12">
						<h2>Useful information</h2>
						<h3>Location</h3>
						<div class="text">
							Monde Restaurant <br>55 Angelica Street <br>10003 New
							York <br>USA
						</div>
						<h3>Dress Code</h3>
						<div class="text">
							Appropriate dress code required <br>T shirts, shorts and
							sports clothes will be refused
						</div>
					</div>
					<div class="map-column col-md-8 col-sm-12 col-xs-12">
						<div class="map-outer">
							<div class="map-canvas" data-zoom="12" data-lat="-37.817085"
								data-lng="144.955631" data-type="roadmap" data-hue="#ffc400"
								data-title="Envato" data-icon-path="images/icons/map-marker.png"
								data-content="Melbourne VIC 3000, Australia<br><a href='mailto:info@youremail.com'>info@youremail.com</a>">
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<section class="order-section">
			<div class="auto-container">
				<div class="auto-container">
				<div class="row clearfix">
					<div class="column col-md-4 col-sm-6 col-xs-12">
						<h3>Contact</h3>
						<div class="text">
							765 - 879 - 1077 <br>55 Angelica Street, NY <br>info@monde.com
						</div>
					</div>
					<div class="column col-md-4 col-sm-6 col-xs-12">
						<div class="logo-box">
							<a href="index.jsp"><img src="images/footer-logo.png" alt="" /></a>
						</div>
						<ul class="social-icon-two">
							<li><a href="#"><span class="fa fa-twitter"></span></a></li>
							<li><a href="#"><span class="fa fa-instagram"></span></a></li>
						</ul>
					</div>
					<div class="column col-md-4 col-sm-6 col-xs-12">
						<h3>Hours</h3>
						<div class="text">
							Every day <br>from Noon to 1:30 pm <br>and from 7 pm to
							9:30 pm
						</div>
					</div>
					<div class="column col-md-12 col-sm-12 col-xs-12">
						<div class="copyright">Copyright &copy; Monde 2017. All
							Rights Reserved.</div>
					</div>
				</div>
			</div>
			</div>
		</section>-->
		<footer class="main-footer" style="height: 200px">
			<div class="auto-container">
				<div class="row clearfix">
					<div class="column col-md-4 col-sm-6 col-xs-12">
						<h3>Contact</h3>
						<div class="text">
							7066188554 <br>Katraj, Pune <br>7piyushmishra@gmail.com,<br>mohitrathore537@gmail.com
						</div>
					</div>
					<div class="column col-md-4 col-sm-6 col-xs-12">
						<div class="logo-box">
							<a href="index.jsp"><img src="images/logo-bot.png" alt="" /><h1 style="font-size: 50px">FUDI</h1></a>
						</div>
						<ul class="social-icon-two">
							<li><a href="#"><span class="fa fa-twitter"></span></a></li>
							<li><a href="#"><span class="fa fa-instagram"></span></a></li>
						</ul>
					</div>
					<div class="column col-md-4 col-sm-6 col-xs-12">
						<h3>Hours</h3>
						<div class="text">
							Mon-Sat <br>from Morning 10:00 am to 11:30 pm <br>
							Sunday <br>from Morning 10:00 am to 9:30 pm 
							9:30 pm
						</div>
					</div>
					<div class="column col-md-12 col-sm-12 col-xs-12">
						<div class="copyright">Copyright &copy; Mohit Rathore 2018. All
							Rights Reserved.</div>
					</div>
				</div>
			</div>
		</footer>
	</div>
	<div class="scroll-to-top scroll-to-target" data-target="html">
		<span class="icon fa fa-angle-up"></span>
	</div>
	<script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="plugins/revolution/js/jquery.themepunch.revolution.min.js"></script>
	<script src="plugins/revolution/js/jquery.themepunch.tools.min.js"></script>
	<script
		src="plugins/revolution/js/extensions/revolution.extension.actions.min.js"></script>
	<script
		src="plugins/revolution/js/extensions/revolution.extension.carousel.min.js"></script>
	<script
		src="plugins/revolution/js/extensions/revolution.extension.kenburn.min.js"></script>
	<script
		src="plugins/revolution/js/extensions/revolution.extension.layeranimation.min.js"></script>
	<script
		src="plugins/revolution/js/extensions/revolution.extension.migration.min.js"></script>
	<script
		src="plugins/revolution/js/extensions/revolution.extension.navigation.min.js"></script>
	<script
		src="plugins/revolution/js/extensions/revolution.extension.parallax.min.js"></script>
	<script
		src="plugins/revolution/js/extensions/revolution.extension.slideanims.min.js"></script>
	<script
		src="plugins/revolution/js/extensions/revolution.extension.video.min.js"></script>
	<script src="js/main-slider-script.js"></script>
	<script src="js/jquery.fancybox.pack.js"></script>
	<script src="js/jquery.fancybox-media.js"></script>
	<script src="js/owl.js"></script>
	<script src="js/appear.js"></script>
	<script src="js/wow.js"></script>
	<script src="js/jquery-ui.js"></script>
	<script src="js/main-slider-script.js"></script>
	<script src="js/script.js"></script>
	<script
		src="https://maps.googleapis.com/maps/api/js?v=3&key=AIzaSyBf4UvvTN2QLWT4BiewE_3fEzK3QrRsLJE"></script>
	<script src="js/map-script.js"></script>
</body>
</html>
