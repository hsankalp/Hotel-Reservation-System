<!doctype html>

<!-- INDEX -->
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
	
	<a href="login.jsp" >Login</a>
	
	<a href="adminlogin.jsp">Admin Login</a><br>
    </div>
	<img src="images/Cloudgate1.jpg" alt="" style="width:70px;height:70px;">
    </header>
    <nav>
    	<ul>
        	<li class=""><a href="index.jsp">Overview</a></li>
			<li class=""><a href="Rooms.jsp">Rooms</a></li>
            <li class=""><a href="Suites.jsp">Suites</a></li>
            <li class="start selected"><a href="Facilities.jsp">Leisure Facilities</a></li>
            <li class=""><a href="Dining.jsp">Dining</a></li>
			
			<li class=""><a href="Reviews.jsp">Write Review</a></li>
			<li class=""><a href="ViewReviews">Guest Reviews</a></li>
			


			
        </ul>
    </nav>

    <div id="body">		

	<section id="content">

	    <article>
		
		<%
			
			String fName = request.getParameter("fType");
			String fPrice = request.getParameter("price");
			
			
		%>


			<h3>Confirmation on the Leisure Facility Booking - <%= fName %> </h3>
			
            <p>You must have a booking confirmation number to enjoy this facility. 
			Once booked the facility, You will have access to enjoy the facility on al the days of your stay at Cloud Gate!!</p>
            

		</article>
	
		<article class="expanded">
		
		
			<form class = "submit-button" method = "get" action = "ConfirmFacility.jsp">
			<table cellpadding='2' cellspacing='1'>
				<tr>
					<td>Booking-Id</td>
					<td>
					</td>
					
					<td><input type="TEXT" size="15" name="bookId"></input></td>
					<input type = "hidden" name = "price" value = <%= fPrice %> >
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