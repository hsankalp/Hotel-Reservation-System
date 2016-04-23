import java.io.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.mongodb.MongoClient;
import com.mongodb.MongoException;
import com.mongodb.WriteConcern;
import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.BasicDBObject;
import com.mongodb.DBObject;
import com.mongodb.DBCursor;
import com.mongodb.ServerAddress;
import java.util.Arrays;
import java.util.List;
import java.util.Set;
import java.util.Date;

public class AddFacility extends HttpServlet
{
	private static final long serialVersionUID = 1L;
	
	MongoClient mongoDB;
	
	public void init() throws ServletException
	{
		//Connect to MongoDB
		
		mongoDB = new MongoClient("localhost", 27017);
		
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
		try
		{
			PrintWriter output = response.getWriter();

			//Get values from html page
			
			String facilityType = request.getParameter("facilityType");
			int facilityAmount = Integer.parseInt(request.getParameter("facilityAmount"));
			
			//Get database
			DB db = mongoDB.getDB("HotelDetails");
			
			//Get table
			DBCollection FacilityDetails = db.getCollection("FacilityDetails");
			
			
			BasicDBObject newDocument = new BasicDBObject();
			
			newDocument.append("$set", new BasicDBObject().append("Amount", facilityAmount));
			
					
			BasicDBObject searchQuery = new BasicDBObject().append("Facility", facilityType);

		
			//Create document for inserting
			
			BasicDBObject doc = new BasicDBObject("Facility", facilityType).
								append("Amount", facilityAmount)
								;

			//Insert
			
			FacilityDetails.insert(doc);
			
			output.println("Document inserted / Facility added successfully");
			
		}
		catch(MongoException e)
		{
			e.printStackTrace();
			
		}
	}
}