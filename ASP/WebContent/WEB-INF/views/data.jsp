<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="resources/font-awesome-4.0.3/css/font-awesome.min.css" type="text/css" rel="stylesheet">
<script src="jquery-1.8.2.min.js" type="text/javascript"></script>
<link type="text/css" href="womenstyle.css" rel="stylesheet">
 <link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Arvo">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>

<link href="http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800" rel="stylesheet">

    <link rel="stylesheet" href="resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="resources/css/normalize.min.css">
    <link rel="stylesheet" href="resources/css/font-awesome.min.css">
    <link rel="stylesheet" href="resources/css/animate.css">
    <link rel="stylesheet" href="resources/css/templatemo_misc.css">
    <link rel="stylesheet" href="resources/css/templatemo_style.css">

    <script src="resources/js/vendor/modernizr-2.6.2.min.js"></script>
     <script type="text/javascript" src="jcjson.json"></script>
   
   <script>

function display_products(){
alert("display")
	// protype=document.getElementById("protype").value;
	$.getJSON("http://localhost:8080/ASP/productslist",function(data){
	
	var results =  " ww ";
	i=0;
	for(var obj in data){
		//if(data[obj].category==protype)
		{
			i++;
			id=data[obj].pid;
			link="details?id="+id
			results +=  "<div class='col-sm-4 item1'><div class='grid check'>"+
						"	<div class='product-image-wrapper'>"+
						"		<div class='single-products'>"+
						"				<div class='productinfo text-center'>"+
						"					<a href="+link+"><img src='"+data[obj].pimage+"' class='image-products' alt='' id='image"+i+"'/></a>"+
						"					<h2>Rs. <span id='price"+i+"'>"+data[obj].pbrand+"</span></h2>"+
						"						<p><div id='name"+i+"'>"+data[obj].pbrand+"</div></p>"+
						"						<div id='id"+i+"'>"+data[obj].pid+"</div>"+
						"						<a class='btn btn-default add-to-cart' href='javascript:void(0)' onclick=toggle_visibility('popupBoxOnePosition');addtocart("+i+");><i class='fa fa-shopping-cart'></i>Add to cart</a>    <a href="+link+" class='btn btn-default add-to-cart'></i>Details</a>"+
						"					</div>"+
						"				<div class='product-overlay'>"+
						"					<div class='overlay-content'>"+
						"						<h2>Rs. <span id='price"+i+"'>"+data[obj].pbrand+"</span></h2>"+
						"						<p><div id='name"+i+"'>"+data[obj].pbrand+"</div></p>"+
						"						<a class='btn btn-default add-to-cart' href='javascript:void(0)' onclick=toggle_visibility('popupBoxOnePosition');addtocart("+i+");><i class='fa fa-shopping-cart'></i>Add to cart</a>    <a href="+link+" class='btn btn-default add-to-cart'></i>Details</a>"+
						"					</div>"+
						"				</div>"+
						"		</div>"+
						"		<div class='choose'>"+
						"			<ul class='nav nav-pills nav-justified'>"+
						"				<li><a href='#'><i class='fa fa-plus-square'></i>Add to wishlist</a></li>"+
						"			</ul>"+
						"		</div>"+
						"	</div>"+
						"</div></div>"
						
						results+=data[obj].pid;
			
				
							
		}
	}
	document.getElementById("results").innerHTML = results
	});
}
    
	    function productlist() 
	    {
				alert("ready....");
	    		   $.ajax({
	    			 
	    		       url: "http://localhost:8080/ASP/productslist"
	    		   }).then(function(mydata)
	    		   	{
	    			   //alert("fun");
	    			   var result=mydata.pid;
	    			   document.getElementById("products").innerHTML=result;
	    		  
	    		 var k;  
	    	   	for (k = 0; k < mydata.length; k++)
	    		   	{ 
	    	   	 alert("k"+ mydata.length );
	    		   	  
	    		  	document.write(mydata[1].pid+"<br>");
	  		   	  document.write( mydata[1].pbrand+"<br>");
	  		   	var data = mydata[1].pimage;
	  		
	  	document.write("<img class='imagem_artigo' src='data:image/png;base64,"+data+"' alt='IMG DESC'>");
	    		  	
	    		    /*  $.each(data, function(idx, obj) {
	    		   	alert(obj.pid);
	    		   	alert(obj.pbrand);
	    		   	}); */
	    		   	
	    		   
	    		   	
	    	   		    		   }}); 
	    		};
    		   
    </script>
   
       
          
</head>
<body>

 
 

<div id="results">
hello
</div>

<script type="text/javascript">display_products();</script>



hellooooo
</body>
</html>