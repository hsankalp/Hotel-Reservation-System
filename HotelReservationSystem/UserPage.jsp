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


<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>Hotel Cloudgate - Welcome!!</title>
	<link rel="stylesheet" href="CloudGate.css" type="text/css" />
</head>

<body >
<div id="container" >
    <header>
	<div align="right" >
	
	</div>
	<img src="images/Cloudgate1.jpg" alt="" style="width:70px;height:70px;">
    </header>
    <nav>
    	<ul>
        	<li class=""><a href="index.jsp">Overview</a></li>
			<li class=""><a href="Rooms.jsp">Rooms</a></li>
            <li class=""><a href="Suites.jsp">Suites</a></li>
            <li class=""><a href="Facilities.jsp">Leisure Facilities</a></li>
            <li class=""><a href="Dining">Dining</a></li>
			
			<li class=""><a href="Reviews.jsp">Write Review</a></li>
			<li class=""><a href="ViewReviews">Guest Reviews</a></li>
			


			
        </ul>
    </nav>

    <div id="body">		

	<section id="content">

	    <article>

			<h2>Welcome Guest!!</h2><br><br>
			
            <p>Please click on <a href="Rooms.jsp">Rooms</a> for reservation!!</p>
            

		</article>
	
		<article class="expanded">
	
		<h3> Check Booking Status</h3>	
		 <form class = "submit-button" method = "get" action = "CheckBookStatus.jsp">
			<table cellpadding='2' cellspacing='1'>
				<tr>
					<td>Booking-Id</td>
					<td>
					</td>
					
					<td><input type="TEXT" size="15" name="bookId"></input></td>
					<td>
					</td>
					<td>
					</td>
					<td>
					</td>
					<td>
					</td>
					
					<td colspan='2'>
					<center><input type="submit" value="Confirm" /></center>
					</td>	
				</tr>
				<tr>
					
				</tr>
				
			</table>
			</form>
			
		   
              
		   
		</article>
		
		
		<article class="expanded">
		<form method="post" action="Cancel.jsp">
			<br>
			<h3>Cancel Reservation</h3>
			<table cellpadding='2' cellspacing='1'>
				
				<tr>
								
					<td> Booking Reference: </td>
						
					
					<td colspan ='2'>
					<Br><input type="submit" value="Cancel Reservation" />
				</td>
						
				</tr>
				
			</table>
			</form>
			</article>
			<article class="expanded">
	
		<h3> Pay your Bill</h3>
			
			<p>You can pay your bill on your last day of the stay which is inclusive of all the facilities.
			</p>				
			
			<form class = "submit-button" method = "get" action = "BillPayment.jsp">
			<table cellpadding='2' cellspacing='1'>
				<tr>
					<td>Booking-Id</td>
					<td>
					</td>
					
					<td><input type="TEXT" size="15" name="bookId"></input></td>
					<td>
					</td>
					<td>
					</td>
					<td>
					</td>
					<td>
					</td>
					
					<td colspan='2'>
					<center><input type="submit" value="Confirm" /></center>
					</td>	
				</tr>
				<tr>
					
				</tr>
				
				
			</table>
			
			</form>
			<br><br><br>
			
		</article>
    </section>
        
    <aside class="sidebar">
	
            <ul>	
               			<li><a href="index.jsp">Overview</a><br></li>
						<li><a href="Location.jsp">Hotel Location</a><br></li>
						<li><a href="Leisure.jsp">Leisure Facilities</a><br></li>
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