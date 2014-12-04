<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Interior Design</title>
    <link type="text/css" rel="stylesheet" href="resources/css/bootstrap.css"/>
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
    <style>

        .back-to-top {
            position: fixed;
            bottom: 2em;
            right: 0px;
            text-decoration: none;
            color: #000000;
            background-color: rgba(235, 235, 235, 0.80);
            font-size: 12px;
            padding: 1em;
            display: none;
        }

        .back-to-top:hover {
            background-color: rgba(135, 135, 135, 0.50);
        }
    </style>
    
     <!--add to cart css -->
    <style type="text/css">

      #popupBoxOnePosition{
        top: 0; left: 0; position: fixed; width: 100%; height: 120%;
        background-color: rgba(0,0,0,0.7); display: none;
      }

      .popupBoxWrapper{
        width: 550px; margin: 50px auto; text-align: left;
      }
      .popupBoxContent{
        background-color: #FFF; padding: 15px;
      }

    </style>

    <link href="http://fonts.googleapis.com/css?family=Overlock:400,700" rel="stylesheet" type="text/css">
    <link href="resources/font-awesome-4.0.3/css/font-awesome.min.css" type="text/css" rel="stylesheet">
    <script src="jquery-1.8.2.min.js" type="text/javascript"></script>

    <link href="resources/css/view.css" type="text/css" rel="stylesheet">
    
    <!-- Add to Cart -->
    <script src="resources/js/addtocart.js" type="text/javascript"></script>

    <script type="text/javascript">
        $(document).ready(function () {
            var elem=$('#container ul');
            $('#viewcontrols a').on('click',function(e) {
                if ($(this).hasClass('gridview')) {
                    elem.fadeOut(1000, function () {
                        $('#container ul').removeClass('list').addClass('grid');
                        $('#viewcontrols').removeClass('view-controls-list').addClass('view-controls-grid');
                        $('#viewcontrols .gridview').addClass('active');
                        $('#viewcontrols .listview').removeClass('active');
                        elem.fadeIn(1000);
                    });
                }
                else if($(this).hasClass('listview')) {
                    elem.fadeOut(1000, function () {
                        $('#container ul').removeClass('grid').addClass('list');
                        $('#viewcontrols').removeClass('view-controls-grid').addClass('view-controls-list');
                        $('#viewcontrols .gridview').removeClass('active');
                        $('#viewcontrols .listview').addClass('active');
                        elem.fadeIn(1000);
                    });
                }
            });
        });
    </script>
    <script type="text/javascript">
        function ajax_get_json(){
           /* var results = document.getElementById("results");
            var hr = new XMLHttpRequest();
            hr.open("GET", "data.json", true);
            hr.setRequestHeader("Content-type", "application/json", true);
            hr.onreadystatechange = function() {
                if(hr.readyState == 4 && hr.status == 200) {
                    var data = JSON.parse(hr.responseText);
                    results.innerHTML = "";*/
                    var results="";
                    alert("wallclocks1");
                    $.getJSON("http://localhost:8080/ASP/productslist",function(data){
                    for(var obj in data){
                        results += "<li>"+
                        "<img src='data:image/png;base64,"+ data[obj].pimage +"' height='250px' width='250px'/><section class='list-left'>"+
                        "<br><span class='product'>'"+data[obj].pname+"' </span><br><br>"+
                        "<p>"+data[obj].pdesc+"</p>"+
                       
                        "<a href='javascript:void(0)' onclick=toggle_visibility('popupBoxOnePosition');><input type='button' class='btn btn-success' value='Add To Cart' onclick='addtocart("+data[obj].pid+")' /></a>"+
                       
                        
                        "</section>"+
                        "<section class='list-right'>"+
                        "<span class='price'>"+data[obj].price+" <img class='img' src='Images/rupee.jpg'></span>"+
                        "<span class='detail'><a class='button'>Details</a></span>"+
                        "</section>"+
                        "</li>";
                        
                    }
    	    		
    	    		document.getElementById("results").innerHTML = results;
    	    		});
    	    	}

                        //alert(results.innerHTML);
                   /* }

                }
            }
            hr.send(null);
            results.innerHTML = "requesting...";
        }*/
    </script>



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
            <a href="index.html" class="navbar-brand"><font color="orange">I</font>nterior <font color="orange">D</font>esign</a>
        </div>
        <!-- Collection of nav links, forms, and other content for toggling -->
        <div id="navbarCollapse" class="collapse navbar-collapse">
            <ul class="nav navbar-nav">
                <li><a href="#" ><font color="white">About</font></a></li>
                <li><a href="#"><font color="white">Services</font></a></li>
                <li><a href="#"><font color="white">Contact</font></a></li>
            </ul>
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

    <div class="row">

        <div class="col-xs-6 col-sm-2">
            <br><br>
            <p class="lead">Filter By</p>
            <div class="list-group">
                <div class="list-group-item active">Categories</div>
                <a href="Wall Clocks.html" class="list-group-item ">Wall Clocks</a>
                <a href="#" class="list-group-item">Flower Vases</a>
                <a href="#" class="list-group-item">Wall Decors</a>
                <a href="#" class="list-group-item">Lights</a>
            </div>
            <br>
            <input type="text" name="sf_search" placeholder="Search " value="">
            <br><br>


            <div class="list-group">
                <div class="list-group-item active">Brands</div>
                <a href="#" class="list-group-item ">Borosil</a>
                <a href="#" class="list-group-item">Bliss India</a>
                <a href="#" class="list-group-item">Four Walls</a>
                <a href="#" class="list-group-item">Echo Lights</a>
                <a href="#" class="list-group-item"></a>
            </div>
            <br>
            <p class="lead">price </p>
            <div class="list-group">

                <div class="meta-range" data-start-min="100" data-start-max="10000" data-min="0" data-max="50" data-step="5">
                    <input name="sf__sfm__price[]" type="number" min="100" max="9500" step="50" class="range-min" value="100"  style="width:40%;height:30%;"/> - 
                    <input name="sf__sfm__price[]" type="number" min="200" max="10000" step="50" class="range-max" value="10000" style="width:40%;height:30%;" />
                    <div class="meta-slider"></div>
                </div>
            </div>
            <br>
            <br>




        </div>

        <div class="col-xs-6 col-sm-4" style="width:80%;margin-left:0%;margin-right:0%;">
            <div class="indent-left p2">
                <h3 class="p0">&nbsp;&nbsp;&nbsp;&nbsp;<strong>W</strong>all Clocks</h3>
            </div>
            <div id="container">
                <div class="view-controls-list" id="viewcontrols">
                    <a class="gridview"><i class="fa fa-th fa-2x"></i></a>
                    <a class="listview active"><i class="fa fa-list fa-2x"></i></a>
                </div>
                <br><br>
                <ul id="results" class="list">

                </ul>
                <script type="text/javascript">ajax_get_json();</script>
            </div>
			
        </div>
        <!--Add to Cart POPUP -->
        <div id='popupBoxOnePosition'>
          <div class='popupBoxWrapper'>
            <div class='popupBoxContent'>
              <p><a href='javascript:void(0)'  onclick="toggle_visibility('popupBoxOnePosition');"> <div style='text-align: right ; ' >close</div></a></p>
              My Cart<hr><br><br>

              <div id='cart'> CART</div>         </div>
          </div>
        </div>
      <br><br>
        <a href="#" class="back-to-top">Back to Top</a>
<script>
    jQuery(document).ready(function() {
        var offset = 220;
        var duration = 3000;
        jQuery(window).scroll(function() {
            if (jQuery(this).scrollTop() > offset) {
                jQuery('.back-to-top').fadeIn(duration);
            } else {
                jQuery('.back-to-top').fadeOut(duration);
            }
        });

        jQuery('.back-to-top').click(function(event) {
            event.preventDefault();
            jQuery('html, body').animate({scrollTop: 0}, duration);
            return false;
        });
    });
</script>

        
<!-- /.container -->

<div class="container">

    <hr>

    <!-- Footer -->
    <footer>
        <div class="row">
            <div class="col-lg-12">
                <p>Copyright &copy; Your Website 2014</p>
            </div>
        </div>
    </footer>

</div>
<!-- /.container -->

<!-- jQuery Version 1.11.0 -->
<script src="js/jquery-1.11.0.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="js/bootstrap.min.js"></script>
</div>
</body>
</html>                                		