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
            <li class=""><a href="Facilities.jsp">Leisure Facilities</a></li>
            <li class=""><a href="Dining.jsp">Dining</a></li>
			
			<li class=""><a href="Reviews.jsp">Write Review</a></li>
			<li class=""><a href="ViewReviews">Guest Reviews</a></li>
			


			
        </ul>
    </nav>

    <div id="body">		

	<section id="content">

	    <article>

			<h3>Confirmation on the Meal Booking</h3>
			
           <p> Tables will be reserved for you. The meal passes will be handed over to you 2 hours prior the meal time by our staff at your room. 

		</article>
	
		<article class="expanded">

        <%
			MongoClient mongoDB;
					
			mongoDB = new MongoClient("localhost", 27017);
		
			String bookId = request.getParameter("bookId"); 
			String fPrice = request.getParameter("price");
				
			//Get database
			DB db = mongoDB.getDB("Hotel");
			
			//Get Order Collection
			DBCollection processedOrders = db.getCollection("Rooms");
			
			
			//Fetch the order details of the customer
		
			BasicDBObject whereQuery = new BasicDBObject();
			whereQuery.put("bookingNo", bookId);
			BasicDBObject fields = new BasicDBObject();
			fields.put("roomPrice", 1);
			
			DBCursor cursor = processedOrders.find(whereQuery, fields);

	
			//Get current total amount from mongodb
			int currentBillAmount = 0;
			
			while (cursor.hasNext()) 
			{
				
				BasicDBObject dbObject = (BasicDBObject)cursor.next();

				currentBillAmount = Integer.parseInt(dbObject.getString("roomPrice"));
				
			}
			
			//Add bill
			
			int newBill = currentBillAmount + Integer.parseInt(fPrice);
			
			//Update collection
			
			BasicDBObject newDocument = new BasicDBObject();
			newDocument.append("$set", new BasicDBObject().append("roomPrice", newBill));
					
			BasicDBObject searchQuery = new BasicDBObject().append("bookingNo", bookId);

			
			//Update
			
			processedOrders.update(searchQuery, newDocument);	
			
					

		%>	
		   
		 <p> Your updated bill is <%= newBill %></p>
              
		   
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