<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML>
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <meta content="text/html; charset=UTF-8" http-equiv="Content-Type">

    <link type="text/css" rel="stylesheet" href="index/css/bootstrap.css"/>
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
    <link href="http://netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css" rel="stylesheet">


    <link href="http://fonts.googleapis.com/css?family=Overlock:400,700" rel="stylesheet" type="text/css">
    <link href="resources/font-awesome-4.0.3/css/font-awesome.min.css" type="text/css" rel="stylesheet">
    <script src="jquery-1.8.2.min.js" type="text/javascript"></script>

    <link href="resources/css/view.css" type="text/css" rel="stylesheet">


    <link href="resources/Filters/css/bootstrap.min.css" media="screen" rel="stylesheet" type="text/css">
    <link href="resources/Filters/css/jquery-ui-1.10.2.custom.min.css" media="screen" rel="stylesheet" type="text/css">
    <link href="resources/Filters/css/stream.css" media="screen" rel="stylesheet" type="text/css">
    <script src="resources/Filters/js/jquery-1.11.1.min.js" type="text/javascript"></script>
    <script src="resources/Filters/js/jquery-ui-1.10.2.custom.min.js" type="text/javascript"></script>
    <!-- development_start -->
    <script src="resources/Filters/js/json_query.js" type="text/javascript"></script>
    <script src="resources/Filters/js/filter.js" type="text/javascript"></script>
    <!-- development_end -->

    <!-- ghpages_start
    <script src="filter.min.js" type="text/javascript"></script>
    ghpages_end -->
    <script src="resources/Filters/data/walldecors.js" type="text/javascript"></script>
    <script src="resources/Filters/js/index.js" type="text/javascript"></script>

    <!-- Add to Cart -->
    <script src="resources/js/addtocart.js" type="text/javascript"></script>



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
  <body>
  <div class="modal fade" id="myModal" tabinex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h4>Login</h4>
        </div>
        <div class="modal-body">
          <form class="well">
            <label>Email</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="email" class="span4"/><br/><br/>
            <label>Password</label>&nbsp;
            <input type="password" class="span4"/><br/><br/>
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

      </div>
      <!-- Collection of nav links, forms, and other content for toggling -->
      <div id="navbarCollapse" class="collapse navbar-collapse">
      <ul class="nav navbar-nav"><li><a href="index.jsp" class="navbar-brand"><font color="orange">I</font>nterior <font color="orange">D</font>esign</a></li></ul>
        <!--<ul class="nav navbar-nav">
          <li><a href="#" ><font color="white">About</font></a></li>
          <li><a href="#"><font color="white">Services</font></a></li>
          <li><a href="#"><font color="white">Contact</font></a></li>
        </ul>-->
        <ul class="nav navbar-nav navbar-right">
          <li><a data-toggle="modal" href="#signup"><font color="white">Sign Up</font></a></li>
          <li><a data-toggle="modal" href="#myModal"><font color="white">Login</font></a></li>
        </ul>
      </div>
    </nav>
  </div>
  <div class="modal fade" id="signup" tabinex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h4>Sign Up</h4>
        </div>
        <div class="modal-body">
          <form class="well span3">
            <table>
              <tr><td><h5>First name&nbsp;</h5></td><td> <input type="text" name="firstname" class="span4"></td><tr>
              <tr><tr><td><h5>Last name&nbsp;</h5> </td><td> <input type="text" name="lastname" class="span4"></td><tr>
              <tr><tr><td><h5>password&nbsp;</h5>  </td><td> <input type="password" name="pwd" class="span4"></td><tr>
              <tr><tr><td><h5>Re-Type password&nbsp;</h5>  </td><td> <input type="password" name="cpwd" class="span4"></td><tr>
              <tr><tr><td><h5>Email&nbsp;</h5> </td><td> <input type="email" name="mail" class="span4"></td><tr>
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


  <div class="container">
      <h1 class="title"></h1>
    <div id="container1">
     <!-- <div class="view-controls-list" id="viewcontrols">
        <a class="gridview"><i class="fa fa-th fa-2x"></i></a>
        <a class="listview active"><i class="fa fa-list fa-2x"></i></a>
      </div>-->

      <ul id="results" class="list">

      </ul>
      <script type="text/javascript">ajax_get_json()</script>
    </div>
      <div class="sidebar col-span-3">
        <div class="row">
          <h4 class="col-span-8"> Wall Decors (<span id="total_movies">250</span>)</h4>
         <!-- <div class="col-span-6 progress">
            <div class="progress-bar" id="stream_progress" style="width: 0%">0 %</div>
          </div>-->
        </div>
        <div>
          <input type="text" id="searchbox" placeholder="Search...">
          <span class="glyphicon glyphicon-search search-icon"></span>
        </div>
        <div class="criteria">
			<h4>Categories </h4>
               <ul class="category" style="list-style-type:none">
				<li>
                   <a href="wallclocks.jsp" class="" style="color:black">Wall CLocks</a></li>
                <li>   <a href="flowervases.jsp" class="" style="color:black">Flower vases</a></li>
                <li>   <a href="walldecors.jsp" class="" style="color:black">Wall Decors</a></li>
                 <li>  <a href="lights.jsp" class="" style="color:black">Lights</a></li>
 				</ul>
               
       </div>
        
        <div class="criteria" id="rating_criteria">
          <h4>Price</h4>
          <span id="rating_range_label" class="slider-label">1000 - 10000</span>
          <div id="rating_slider" class="slider"></div>
          <input type="hidden" id="rating_filter" value="100-10000"/>
        </div>

        <div class="criteria" id="genre_criteria">
          <h4>Brands</h4>
          <div class="checkbox">
            <label>
              <input type="checkbox" value="All" id="all_genre"> All
            </label>
          </div>
          <div class="checkbox">
            <label>
              <input type="checkbox" value="Ceramic"> Ceramic
            </label>
            </div><div class="checkbox">
            <label>
              <input type="checkbox" value="teracota"> Teracota
            </label>
            </div><div class="checkbox">
            <label>
              <input type="checkbox" value="Glass"> Glass
            </label>
            </div>
            </div>

      </div>
      <div class="sorting content col-span-9">
      </div>
      <div class="movies content col-span-9" id="movies">
      </div>




    <!--Add to Cart POPUP -->
    <div id='popupBoxOnePosition'>
      <div class='popupBoxWrapper'>
        <div class='popupBoxContent'>
          <p><a href='javascript:void(0)'  onclick=toggle_visibility('popupBoxOnePosition');><div style='text-align: right ; ' >close</div></a></p>
          My Cart<hr><br><br>

          <div id='cart'></div>          </div>
      </div>
    </div>
    <br><br>
      <script type="text/javascript">
        var i=0;
      </script>
      <script id="movie-template" type="text/html">
        <div class='col-span-4 movie'>
          <div class='thumbnail'>
            <span class='label label-success rating'><div id='price<%= i%>' > rating </div>
            <i class='glyphicon glyphicon-usd'></i>
          </span>
            <div class="caption" >
              <h4><div id="name<%= i%>"><font size="2px"> name </font></div></h4>
              
              <div class="">
                <dl>
                  <dt></dt>
                  <br><center><dd><a href="desc.jsp"><img  src="<%= image %>" id="image<%= i%>" value="<%= image %>" /></a></dd></center><br>
                  <dd><a href="javascript:void(0)" onclick="toggle_visibility('popupBoxOnePosition');"><input type="button" class="btn btn-success" value="Add To Cart"  onclick='addtocart("<%= i%>")' /></a> i=i+1;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                    </dd>
                 
                </dl>
              </div>
            </div>
          </div>
        </div>

      </script>

      <script id="genre_template" type="text/html">
        <div class="checkbox">
          <label>
            <input type="checkbox" value="<%= genre %>">  genre 
          </label>
        </div>
      </script>
    </body>
  </html>
