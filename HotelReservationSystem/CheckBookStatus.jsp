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
	
	</div>
	<img src="images/Cloudgate1.jpg" alt="" style="width:70px;height:70px;">
    </header>
    <nav>
    	<ul>
        	<li class=""><a href="index.jsp">Home</a></li>
			<li class=""><a href="Rooms.jsp">Rooms</a></li>
            
			


			
        </ul>
    </nav>

    <div id="body">		

	<section id="content">

	    <article>

			<h3>Your Current Reservation Details</h3>
			
            <p>Please click on <a href="Rooms.jsp">Rooms</a> for reservation!!</p>
            

		</article>
	
		<article class="expanded">

        <%
				
					MongoClient mongoDB;
					
					mongoDB = new MongoClient("localhost", 27017);
		
					String bookId = request.getParameter("bookId");
						
					//Get database
					DB db = mongoDB.getDB("Hotel");
					
					//Get Order Collection
					DBCollection processedOrders = db.getCollection("Rooms");
					
					
					//Fetch the order details of the customer
				
					BasicDBObject whereQuery = new BasicDBObject();
					whereQuery.put("bookingNo", bookId);
					BasicDBObject fields = new BasicDBObject();
					fields.put("roomType", 1);
					fields.put("fromDate", 2);
					fields.put("toDate", 3);
					fields.put("roomPrice", 4);
					fields.put("bookedDate", 5);
					
					
					DBCursor cursor = processedOrders.find(whereQuery, fields);

					String roomType = null;
					String fDate = null;
					String tDate = null;
					String rPrice = null;
					String bDate = null;
			
					while (cursor.hasNext()) 
					{
						
						BasicDBObject dbObject = (BasicDBObject)cursor.next();

						roomType = dbObject.getString("roomType");
						fDate = dbObject.getString("fromDate");
						tDate = dbObject.getString("toDate");
						rPrice = dbObject.getString("roomPrice");
						bDate = dbObject.getString("bookedDate");
						
					}			

		%>
		
				
		   
		 	<table cellpadding='2' cellspacing='1'>
				
					
				<td>
				<tr>
					<td>
					<h4>Room Type : <%= roomType %> </h4> 			
					<h4>From : <%= fDate %> </h4> 			
					<h4>To : <%= tDate %> </h4> 			
					<h4>Current Rent : <%= rPrice %> </h4> 			
					<h4>Date of Booking : <%= bDate %> </h4> 
					<td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td>
					
									
						<%
							if (roomType.equals("Superior"))
							{
						%>		
								<td>
										<p><img src="images/superior.jpg" alt="" style="width:250px;height:250px;"></p>
									</td>
						<%	}
							else if(roomType.equals("Deluxe"))
							{
						%>		
									<td>
										<p><img src="images/deluxe.jpg" alt="" style="width:250px;height:250px;"></p>
									</td>
						<%	}
							else if(roomType.equals("Premier"))
							{
						%>		<td>
										<p><img src="images/premier.jpg" alt="" style="width:250px;height:250px;"></p>
									</td>
						<%	}
							else if(roomType.equals("Premier Plus"))
							{
						%>		<td>
										<p><img src="images/premier+.jpg" alt="" style="width:250px;height:250px;"></p>
									</td>
						<%	}
							else if(roomType.equals("Executive"))
							{
						%>		<td>
										<p><img src="images/executive.jpg" alt="" style="width:250px;height:250px;"></p>
									</td>
						<%	}
							else if(roomType.equals("Presidential"))
							{
						%>		<td>
										<p><img src="images/presidential.jpg" alt="" style="width:250px;height:250px;"></p>
									</td>
						<%	}
							else if(roomType.equals("Imperial"))
							{
						%>		<td>
										<p><img src="images/imperial.jpg" alt="" style="width:250px;height:250px;"></p>
									</td>
						<%	}
							else if(roomType.equals("Royal"))
							{
						%>		<td>
										<p><img src="images/royal.jpg" alt="" style="width:250px;height:250px;"></p>
									</td>
						<%	}
						%>		
					
				</tr>
				<tr>
					<p> Your room rent is generated for the current booking status. It is subjected to change for any additional facilities to be made by you. You can cancel the booking by clicking below!! </p>
					
					<form class = "submit-button" method = "get" action = "Cancel.jsp">
						<input type = "hidden" name = "bookId" value = <%= bookId %> >
						<input class = "submit-button" type = "submit" name = "Cancel" value = "Cancel">
					</form>
				
				</tr>
				
			</table>
			</form>
			
		   <form action="UserPage.jsp">
			<input type="submit" value="Back"/>
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