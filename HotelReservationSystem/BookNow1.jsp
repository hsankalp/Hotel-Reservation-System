<%@ page import= "java.io.*, java.util.*, java.util.Arrays, java.util.List, java.util.Set, java.util.Date " %>
<%@ page import = "com.mongodb.MongoClient" %>
<%@ page import = "com.mongodb.MongoException" %>
<%@ page import = "com.mongodb.WriteConcern" %>
<%@ page import = "com.mongodb.DB" %>
<%@ page import = "com.mongodb.DBCollection" %>
<%@ page import = "com.mongodb.BasicDBObject" %>
<%@ page import = "com.mongodb.DBObject" %>
<%@ page import = "com.mongodb.DBCursor" %>
<%@ page import = "com.mongodb.ServerAddress" %>


<!-- INDEX -->
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Room Booking..</title>
<link rel="stylesheet" href="CloudGate.css" type="text/css" />
<script type="text/javascript" src="javascript.js"></script>	

<link rel="stylesheet" href="//code.jquery.com/ui/1.11.2/themes/smoothness/jquery-ui.css">
  <script src="//code.jquery.com/jquery-1.10.2.js"></script>
  <script src="//code.jquery.com/ui/1.11.2/jquery-ui.js"></script>
<script>
  $(function() {
    $( "#from" ).datepicker({
      defaultDate: "+1w",
      changeMonth: true,
      numberOfMonths: 2,
      onClose: function( selectedDate ) {
        $( "#to" ).datepicker( "option", "minDate", selectedDate );
      }
    });
    $( "#to" ).datepicker({
      defaultDate: "+1w",
      changeMonth: true,
      numberOfMonths: 2,
      onClose: function( selectedDate ) {
        $( "#from" ).datepicker( "option", "maxDate", selectedDate );
      }
    });
  });
  </script>	
</head>

<body onload="init()">
<%String roomPrice = request.getParameter("price");%>
<div id="container" >
    <header>
	<div align="right" >
	
	<a href="login.html" >Login</a>
	
	<a href="Admin.jsp">Admin Login</a><br>
    </div>
	<img src="images/Cloudgate1.jpg" alt="" style="width:70px;height:70px;">
    </header>
    <nav>
    	<ul>
        	<li class="start selected"><a href="index.jsp">Overview</a></li>
			<li class=""><a href="Rooms.jsp">Rooms</a></li>
            <li class=""><a href="Suites.jsp">Suites</a></li>	
            <li class=""><a href="Facilities.jsp">Leisure Facilities</a></li>
            <li class=""><a href="Dining.jsp">Dining</a></li>
			
			<li class=""><a href="Reviews.jsp">Write Review</a></li>
			<li class=""><a href="ViewReviews">Guest Reviews</a></li>
			


			
        </ul>
    </nav>

    <div id="body">		

	<section id="content">

	    <article>

			<h2>Room Booking</h2>
			
            

		</article>
		
		<article class="expanded">
		

<form action="BookRoom.jsp">
						<table><tr>Room/Suite Type:<select name="roomType">
                                        <option value="Superior" selected>Superior</option>
                                        <option value="Deluxe">Deluxe</option>
                                        <option value="Premier">Premier</option>
                                        <option value="Premier Plus">Premier Plus</option>
										 <option value="Executive">Executive</option>
                                        <option value="Presidential">Presidential</option>
                                        <option value="Royal">Royal</option>
                                        <option value="Imperial">Imperial</option></tr><br><br>
						<br><tr><label for="from">From:</label>
						<input type="text" id="from" name="from"><br><br></tr>
						<tr><label for="to">To:</label>
						<input type="text" id="to" name="to"><br><br></tr>
						<tr><input type = "hidden" name = "price" value="<%=roomPrice%>"></tr>
						<tr><input type="submit" value="Confirm Booking"/></tr></table>
						
					</form>
					  
		   
		</article>
    </section>
        
    <aside class="sidebar">
	
            <ul>	
               			<li><a href="index.jsp">Overview</a><br></li>
						<li><a href="Location.jsp">Hotel Location</a><br></li>
						<li><a href="Facilities.jsp">Leisure Facilities</a><br></li>
						<li><a href="Services.jsp">Hotel Services</a><br></li>
						<li><a href="Local.jsp">Local Information</a><br></li>
						<li><a href="Gallery.jsp">Gallery</a><br></li>
			  
            </ul>
		
    </aside>
    
	<div class="clear"></div>
	</div>
    
	<footer>
	
        <div class="footer-content">
           <p>Name and Address</p>
        <div class="clear"></div>
        </div>
		
        <div class="footer-bottom">
            <p>Copyrights@ Sankalp, Kavya, Prithvee, Chaithanya, Atul</p>
        </div>
		
    </footer>
</div>

</body>

</html>
