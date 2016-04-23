
<%@page import="java.io.*"%>
<%@page import="javax.servlet.ServletException"%>
<%@page import="javax.servlet.annotation.WebServlet"%>
<%@page import="javax.servlet.http.HttpServlet"%>
<%@page import="javax.servlet.http.HttpServletRequest"%>
<%@page import="javax.servlet.http.HttpServletResponse"%>
<%@page import="com.mongodb.MongoClient"%>
<%@page import="com.mongodb.MongoException"%>
<%@page import="com.mongodb.WriteConcern"%>
<%@page import="com.mongodb.DB"%>
<%@page import="com.mongodb.DBCollection"%>
<%@page import="com.mongodb.BasicDBObject"%>
<%@page import="com.mongodb.DBObject"%>
<%@page import="com.mongodb.DBCursor"%>
<%@page import="com.mongodb.ServerAddress"%>
<%@page import="java.util.Arrays"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.*"%>
<%@page import="java.text.*"%>

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

			<h2>Room Booking</h2>
			
            

		</article>
		
		<article class="expanded">
		

<%	MongoClient mongo = new MongoClient("localhost",27017);
	DB db = mongo.getDB("Hotel");
	DBCollection Rooms = db.getCollection("Rooms");
	
	String roomType = request.getParameter("roomType");
	String roomPrice = request.getParameter("price");
	String fromDate = request.getParameter("from");
	String toDate = request.getParameter("to");
	
	Long orderConcat = System.currentTimeMillis();
	String bookingNo = Long.toString(orderConcat);
	
	DateFormat dFormat = new SimpleDateFormat("MM/dd/yy");
	Date dateObj = new Date();
	String dateOfOrder = dFormat.format(dateObj);
	
	Calendar c = Calendar.getInstance();
	c.setTime(new Date());
	String bookedDate = dFormat.format(c.getTime());
	 
	BasicDBObject whereQuery = new BasicDBObject();
    whereQuery.put("roomType", roomType);
    DBCursor cursor = Rooms.find(whereQuery);
	if(cursor.count()>1){
		out.println("\n Sorry. The selected"+ roomType +"type is not available\n");
	}
	else{
		DBObject doc1 = new BasicDBObject("roomType",roomType).
										append("fromDate",fromDate).
										append("toDate",toDate).
										append("roomPrice",roomPrice).
										append("bookedDate",bookedDate).
										append("bookingNo",bookingNo);
		Rooms.insert(doc1);
		out.println("\n Room booked successfully!!..Have a pleasant stay!\n");%>
		<p>Your booking Number is <%=bookingNo%></p>
		<form action="Facilities.jsp">
						<br><input type="submit" value="Extra facility"/>
						</form>
		<form action="Cancel.jsp">
			<input type = "hidden" name = "roomType" value = <%= roomType %> >
			<input type="submit" value="Cancel Booking"/>
			</form>

<%	}  

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





