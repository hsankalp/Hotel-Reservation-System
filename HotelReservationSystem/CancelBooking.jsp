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
<%@page import="java.io.*"%>

<html>
<head>
<title>Cancel Order</title>
</head>
<body>

<% MongoClient mongoDB;
	
   mongoDB = new MongoClient("localhost", 27017);
   
    DB db = mongoDB.getDB("Hotel");
   DBCollection Rooms = db.getCollection("Rooms");
   
   BasicDBObject query = new BasicDBObject();
   DBCursor dbCursor = null;
   
	String bookId = request.getParameter("bookId");

    query.put("bookingNo",bookId);
	dbCursor = Rooms.find(query);
    if (dbCursor!=null) {		
			Rooms.remove(new BasicDBObject().append("bookingNo", bookId));%>

	 <h1> Your booking has been cancelled successfully! </h1>
   <%}else{%>
	   <h1>Sorry. Entered booking id doesnot exists </h1>
 <%  }
	%>
	<a href='index.jsp'> Continue </a></br>
	

	
</body>
</html>
