<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Interior Design</title>
<link type="text/css" rel="stylesheet" href="index/css/bootstrap.css"/>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
 <link href="http://netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css" rel="stylesheet">
<style type="text/css">
    .navbar-collapse{
		background-color:black;
		}
	.navbar-brand{
			font-size:24px;
			}
	.nav{
		font-size:18px;
		}
		h4{
			text-align:center;
			}
	.carousel{
			margin-top:0px;
			margin-bottom:20px;
			position:relative;
			}
</style>

</head> 
<body  background="resources/images/bg.jpg">
<div class="modal fade" id="myModal" tabinex="-1" role="dialog" aria-hidden="true">
	<div class="modal-dialog">
    	<div class="modal-content">
        	<div class="modal-header">
            	<h4>Login</h4>
            </div>
            <div class="modal-body">
            	<form class="well" action="login">
					<label>Email</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="email" class="span4" name="email"/><br/><br/>
					<label>Password</label>&nbsp;
					<input type="password" class="span4" name="pwd"/><br/><br/>
					<button type="submit" class="btn btn-success">Login</button>
					<button type="reset" class="btn">Clear</button>
				</form>
            </div>
            <div class="modal-footer">
            	<button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
            </div>
         </div>
     </div>
</div>

</div>
<div class="navigation">
    <nav role="navigation" class="navbar navbar-default">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" data-target="#navbarCollapse" data-toggle="collapse" class="navbar-toggle">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a href="index.jsp" class="navbar-brand"><font color="orange">I</font><font color="white">nterior</font> <font color="orange">D</font><font color="white">esign</font> </a>
        </div>
        <!-- Collection of nav links, forms, and other content for toggling -->
        <div id="navbarCollapse" class="collapse navbar-collapse">
            <ul class="nav navbar-nav navbar-right">
				<li><a data-toggle="modal" href="#signup"><font color="white">Sign Up</font></a></li>
                <li><a data-toggle="modal" href="#myModal"><font color="white">Login</font></a></li>
            </ul>
        </div>
    </nav>
</div>
<p><center><h1>${personObj.firstname}</h1></center></p>
<div class="modal fade" id="signup" tabinex="-1" role="dialog" aria-hidden="true" >
	<div class="modal-dialog">
    	<div class="modal-content">
        	<div class="modal-header">
            	<h4>Sign Up</h4>
            </div>
            <div class="modal-body">
            	<form class="well span3"  action="persons" method="post">
					<table>
					<tr><td><h5>First name&nbsp;</h5></td><td> <input type="text" name="firstname" class="span4"></td><tr>
					<tr><tr><td><h5>Last name&nbsp;</h5> </td><td> <input type="text" name="lastname" class="span4"></td><tr>
					<tr><tr><td><h5>password&nbsp;</h5>  </td><td> <input type="password" name="pwd" class="span4"></td><tr>
					<tr><tr><td><h5>Re-Type password&nbsp;</h5>  </td><td> <input type="password" name="cpwd" class="span4"></td><tr>
					<tr><tr><td><h5>Email&nbsp;</h5> </td><td> <input type="email" name="email" class="span4"></td><tr>
					<tr><tr><td><h5>Mobile&nbsp;</h5>  </td><td> <input type="tel" name="mobile" min="8999999991" class="span4"></td><tr>
					</table><br/><br/>
					<button type="submit" class="btn btn-success" align="center">Register</button>
					<button type="reset" class="btn">Clear</button>
				</form>
            </div>
            <div class="modal-footer">
            	<button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
            </div>
         </div>
     </div>
</div>

<div class="modal fade" id="contact" tabinex="-1" role="dialog" aria-hidden="true">
	<div class="modal-dialog">
    	<div class="modal-content">
        	<div class="modal-header">
            	<h4>Contact</h4>
            </div>
            <div class="modal-body">
            	<form class="well span3">
					<table>
					<tr><tr><td><h5>E-Mail&nbsp;</h5>  </td><td> <input type="email" name="email" class="span4"></td><tr>					
					<tr><td><h5>Subject&nbsp;</h5></td><td> <input type="text" name="topic" class="span4"></td><tr>					
					<tr><tr><td><h5>Description&nbsp;</font></h5> </td><td> <textarea name="desc" rows="5" cols="20" class="span4"></textarea></td><tr>
					</table><br/><br/>
					<button type="submit" class="btn btn-success" align="center">Submit</button>
					<button type="reset" class="btn">Clear</button>
				</form>
            </div>
            <div class="modal-footer">
            	<button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
            </div>
         </div>
     </div>
</div>

<div class="container">

        <div class="row">

            <div class="col-md-3">
                <p class="lead"></p>
                <div class="list-group">
                    <a href="wallclocksid" class="list-group-item">Wall CLocks</a>
                    <a href="flowervasesid" class="list-group-item">Flower vases</a>
                    <a href="walldecorsid" class="list-group-item">Wall Decors</a>
                    <a href="lightsid" class="list-group-item">Lights</a>
                </div>
            </div>

            <div class="col-md-9">

                <div class="row carousel-holder">

                    <div class="col-md-12">
                        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                            <ol class="carousel-indicators">
                                <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                                <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                                <li data-target="#carousel-example-generic" data-slide-to="2"></li>
								<li data-target="#carousel-example-generic" data-slide-to="3"></li>
                            </ol>
                            <div class="carousel-inner">
                                <div class="item active">
                                    <img class="slide-image" src="resources/indeximages/lights.jpg" alt="">
                                </div>
                                <div class="item">
                                    <img class="slide-image" src="resources/indeximages/wallclock.jpg" alt="">
                                </div>
                                <div class="item">
                                    <img class="slide-image" src="resources/indeximages/flowervase.jpg" alt="">
                                </div>
								<div class="item">
                                    <img class="slide-image" src="resources/indeximages/walldecor.jpg" alt="">
                                </div>
                            </div>
                            <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                                <span class="glyphicon glyphicon-chevron-left"></span>
                            </a>
                            <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
                                <span class="glyphicon glyphicon-chevron-right"></span>
                            </a>
                        </div>
                    </div>

                </div>

               





        </div>

    </div>
    <!-- /.container -->

    <div class="container">

        <hr>

        <!-- Footer -->
        <footer>
            <div class="row">
                <div class="col-lg-12">
					<h3>About Us</h3>
                    <p>Interior Designs provides the shopping destination for customers where they can find variety of home decor interior items under 4 different categories. 
					We are offering a wide range of items which makes customers shop comfortably at their home without taking the effort to go out. 
					Our main motto is deliver the product as early as possible and satisfy the customers with delivery services. 
					We thank you for taking your time to know about us as it helps you to know us better.</p>
					<h3>Contact Us</h3>
					<p>E-Mail: care@Interiordesign.com&nbsp&nbsp <a data-toggle="modal" href="#contact"><span><button type="button" class="btn btn-primary">Contact</button></span></a></p>
					<p>Mobile: +919160188999</p>
                </div>
            </div>
        </footer>

    </div>
    <!-- /.container -->

    <!-- jQuery Version 1.11.0 -->
    <script src="resources/js/jquery-1.11.0.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="resources/js/bootstrap.min.js"></script>
	</div>
</body>
</html>                                		