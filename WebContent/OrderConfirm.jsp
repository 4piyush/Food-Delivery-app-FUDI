<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>CART</title>
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Custom Theme files -->
<link href="css/font-awesome.min.css" rel="stylesheet" type="text/css" media="all">
<link href="css/popuo-box.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style1.css" rel="stylesheet" type="text/css" media="all" />
<!-- //Custom Theme files -->
<!-- web font -->
<link href="//fonts.googleapis.com/css?family=Oswald:400,700" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">
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
 <meta charset="utf-8">
    <meta name="robots" content="all,follow">
    <meta name="googlebot" content="index,follow,snippet,archive">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Obaju e-commerce template">
    <meta name="author" content="Ondrej Svestka | ondrejsvestka.cz">
    <meta name="keywords" content="">

    <title>
        Order COnfirm
    </title>

    <meta name="keywords" content="">

    <link href='http://fonts.googleapis.com/css?family=Roboto:400,500,700,300,100' rel='stylesheet' type='text/css'>

    <!-- styles -->
    <link href="css/font-awesome.css" rel="stylesheet">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/animate.min.css" rel="stylesheet">
    <link href="css/owl.carousel.css" rel="stylesheet">
    <link href="css/owl.theme.css" rel="stylesheet">

    <!-- theme stylesheet -->
    <link href="css/style.default.css" rel="stylesheet" id="theme-stylesheet">

    <!-- your stylesheet with modifications -->
    <link href="css/custom.css" rel="stylesheet">

    <script src="js/respond.min.js"></script>

    <link rel="shortcut icon" href="favicon.png">

</head>
<body class="fullwidth-page" style="margin-top: -25px">

<%if(request.getAttribute("msg")!=null)
	{
	%>
	<div class="alert alert-danger alert-dismissible">
	<%=request.getAttribute("msg") %>
	</div>
	<%
	}%>	
    <div class="page-wrapper">
        
        <header class="main-header header-style-four">
            <div class="header-upper">
                <div class="auto-container">
                    <div class="inner-container clearfix">
                        <div class="logo-outer">
                            <div class="logo">
                                <a href="index.jsp"><img src="images/logo-bot.png" alt=""
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
                                                
                                            <li class="dropdown"><a href="#">Account</a>
                                                <ul>
                                                    <li><a href="LogOut.jsp">Logout</a></li>
                                                  
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
        </header>
                <div class="col-md-3">
                <br>
                <br>
                    <div class="box" id="order-summary" style="width:400px">
                        <div class="box-header">
                            <h3>Order Information</h3>
                             <div class="table-responsive" style="padding-bottom: -100px">
                            <table class="table">
                                <tbody>
                                    <tr>
                                        <td>Order Id</td>
                                        <th><%=session.getAttribute("orderId") %></th>
                                    </tr>
                                    <tr>
                                        <td>Date</td>
                                        <th><%=session.getAttribute("date") %></th>
                                    </tr>   
                                    <tr>
                                        <td>Address</td>
                                        <th><%=session.getAttribute("deliveryLocation")%></th>
                                    </tr>                           
                                </tbody>
                            </table>
                        </div>
                        </div>
                        <p class="text-muted">Order Summary</p>

                        <div class="table-responsive">
                            <table class="table">
                                <tbody>
                                    <tr>
                                        <td>Order subtotal</td>
                                        <th><%=session.getAttribute("total") %></th>
                                    </tr>
                                    <tr>
                                        <td>Shipping and handling</td>
                                        <th><%=session.getAttribute("discount") %></th>
                                    </tr>
                                    <tr>
                                        <td>Tax</td>
                                        <th>$0.00</th>
                                    </tr>
                                    <tr class="total">
                                        <td>Total</td>
                                        <th><%=session.getAttribute("total") %></th>
                                    </tr>
                                </tbody>
                            </table>
                        </div>

                    </div>
 

                   
                </div>
                <div class="col-md-9">
               <center> <h4 style="margin-top: 50px;color: #1ECD9E"> Your order has been confirmed.</h4></center>
                <center> <h4> Your order will be delivered to you shortly.</h4></center>
                    <img src="images/delivery-boy-1.png" height="300px" width="600" style="margin-top: 80px;margin-left: 150px">
                    <h5 style="margin-left: 520px"> We will be at your home in 30 min......</h5>
                    <form action="PdfLog" method="post"><input type="submit" class="theme-btn btn-style-two add-to-cart" value="Generate Bill">
                    </form>
                </div>
                <!-- /.col-md-3 -->

            
            <!-- /.container -->
        
        <!-- /#content -->

        <!-- *** FOOTER ***
 _________________________________________________________ -->
       
    

    <!-- *** SCRIPTS TO INCLUDE ***
 _________________________________________________________ -->
    <script src="js/jquery-1.11.0.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.cookie.js"></script>
    <script src="js/waypoints.min.js"></script>
    <script src="js/modernizr.js"></script>
    <script src="js/bootstrap-hover-dropdown.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/front.js"></script>
    </div>
    <div class="scroll-to-top scroll-to-target" data-target="html">
        <span class="icon fa fa-angle-up"></span>
    </div>
    </div>
</body>
</html>
