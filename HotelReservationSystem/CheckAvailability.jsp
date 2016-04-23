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

			<h2>Room Availability</h2>
			
            

		</article>
		
		<article class="expanded">
		<h3>Checking the availablity of rooms/suites on selected dates...</h3>

	<%	MongoClient mongo = new MongoClient("localhost",27017);
	DB db = mongo.getDB("Hotel");
	DBCollection Rooms = db.getCollection("Rooms");
	
	String roomType = request.getParameter("roomType");
	String fromDate = request.getParameter("from");
	String toDate = request.getParameter("to");
	
	if(fromDate == "" || toDate == ""){
		
	%>
	<h2>Please Enter Dates for room type <%=roomType%>!</h2>

<%	
		
	}else{
	
	BasicDBObject query = new BasicDBObject();
	query.put("fromDate",fromDate);
	query.put("toDate",toDate);
	query.put("roomType",roomType);
	BasicDBObject where = new BasicDBObject();
	   where.put("$and",query);
	   DBObject doc1 = Rooms.findOne(query);
	   if(doc1!=null){%>
		  <p>Sorry..Rooms/Suite are unavailable for the selected dates for room type <%=roomType%>!</p>
		  <form action="Rooms.jsp">
			<input type="submit" value="Back"/>
			</form>
	 <%  }
	   else{%>
	   <p> Rooms are available on the selected dates! <%=fromDate%> to <%=toDate%> for room type <%=roomType%></p>
		<form action="Rooms.jsp">
			<input type="submit" value="Back"/>
			</form>
	<%   }
	}
%>


  
		   
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



