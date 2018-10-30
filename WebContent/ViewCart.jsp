<%@page import="java.util.ArrayList,com.beans.Cart" language="java"  %>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta name="robots" content="all,follow">
    <meta name="googlebot" content="index,follow,snippet,archive">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Obaju e-commerce template">
    <meta name="author" content="Ondrej Svestka | ondrejsvestka.cz">
    <meta name="keywords" content="">

    <title>
		Cart
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

<body>
<% 
ArrayList<Cart> cartList=(ArrayList<Cart>) session.getAttribute("cartList");
if(cartList!=null)
{
	
			%>
    <!-- *** TOPBAR ***
 _________________________________________________________ -->
 <!-- *** NAVBAR START *** -->

        <!-- *** NAVBAR END *** -->

    <div id="all">

        <div id="content">
            <div class="container">

                <div class="col-md-12">
                    <ul class="breadcrumb">
                        <li><a href="#">Home</a>
                        </li>
                        <li>View cart</li>
                    </ul>
                </div>

                <div class="col-md-9" id="basket">

                    <div class="box">

                   
                            <h1> Your Cart</h1>
                            <p class="text-muted">You currently have <%=cartList.size()%> item(s) in your cart.</p>
                            <div class="table-responsive">
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th colspan="2">Item</th>
                                            <th>Unit price</th>
                                            <th>Discount</th>
                                            <th>Total</th>
                                         
                                            <th colspan="3"  style="margin-left:50px">Quantity</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    
                                    <%
			if(cartList.size()>0)
				{
					for(int x=0;x<cartList.size();x++)
					{
						Cart cart=cartList.get(x);
						if(cart.getNumber()>0)
						{
			%>
		 								<tr>
                                            <td>
<!--                                                 <a href="#"> -->
<!--                                                     <img src="img/detailsquare.jpg" alt="White Blouse Armani"> -->
<!--                                                 </a> -->
                                            </td>
                                            <td><a href="#"><%=cart.getMenu().getName()%></a>
                                            </td>
                                       
                                            <td><%=cart.getMenu().getPrice()%></td>
                                            <td><%=session.getAttribute("discount")%></td>
                                             <td><%=cart.getPrice()%></td>
                                  			 <td><a class="remove" href="#"><button><b>-</b></button></a></td> 
                                            <td><%=cart.getNumber()%></td>
                                             <td><a class="add" href="#"><button><b>+</b></button></a></td> 
											
                                        </tr>
			<%
						}
					}
				}
			
			%>
                                       
                                    </tbody>
                                    <tfoot>
                                        <tr>
                                            <th colspan="5">Total</th>
                                            
                                            <th colspan="2">
                                            <%if(cartList!=null)
                                            {%>
                                            <%=session.getAttribute("total")%>
                                            <%
                                            }
                                            else
                                           	{
                                           	%>0.0
                                           	<%
                                           	}%>
                                            </th>
                                        </tr>
                                    </tfoot>
                                </table>

                            </div>
                            <!-- /.table-responsive -->
							 <div class="box-footer">
                                <div class="pull-left">
                                    <a href="MenuItems.jsp" class="btn btn-default"><i class="fa fa-chevron-left"></i> Back to Menu</a>
                                </div>
                                <div class="pull-right">
                              <form name="form13" action="Address.jsp" method="post">
                                  <button type="submit" class="btn btn-primary">Proceed to checkout <i class="fa fa-chevron-right"></i>
                                    </button>
                              </form>
                                </div>
                            </div>
							
                           

                    

                    </div>
                    <!-- /.box -->


                    <div class="row same-height-row">
                       
                            <!-- /.product -->
                        


                        <div class="col-md-3 col-sm-6">
                            <div class="product same-height">
                                <div class="flip-container">
                                    <div class="flipper">
                                        <div class="front">
                                            <a href="detail.jsp">
                                                <img src="img/product3.jpg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                        <div class="back">
                                            <a href="detail.jsp">
                                                <img src="img/product3_2.jpg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <a href="detail.jsp" class="invisible">
                                    <img src="img/product3.jpg" alt="" class="img-responsive">
                                </a>
                               
                            </div>
                            <!-- /.product -->
                        </div>

                    </div>


                </div>
                <!-- /.col-md-9 -->

                <div class="col-md-3">
                    <div class="box" id="order-summary">
                        <div class="box-header">
                            <h3>Order summary</h3>
                        </div>
                        <p class="text-muted">Delivery and additional costs are calculated based on the values you have entered.</p>

                        <div class="table-responsive">
                            <table class="table">
                                <tbody>
                                    <tr>
                                        <td>Order subtotal</td>
                                        <th><%=session.getAttribute("total") %></th>
                                    </tr>
                                    <tr>
                                        <td>Delivery and handling</td>
                                        <th>0.00</th>
                                    </tr>
                                    <tr>
                                        <td>Tax</td>
                                        <th>0.00</th>
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
                <!-- /.col-md-3 -->

            </div>
            <!-- /.container -->
        </div>
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
<script src="ViewCart.js"></script>
<%}
else
{
	request.setAttribute("msg","Cart is empty.Please add some items!!");
%>
<jsp:include page="Location.jsp"></jsp:include>
<%
} %>


</body>

</html>