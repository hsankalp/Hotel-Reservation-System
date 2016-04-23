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

public class AdminRoomRent extends HttpServlet
{
	private static final long serialVersionUID = 1L;
	
	MongoClient mongoDB;
	
	public void init() throws ServletException
	{
		//Connect to MongoDB
		
		mongoDB = new MongoClient("localhost", 27017);
		
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
		try
		{
			PrintWriter output = response.getWriter();

			//Get values from html page
			
			String roomType = request.getParameter("roomType");
			int roomRent = Integer.parseInt(request.getParameter("roomRent"));
			int roomCount = Integer.parseInt(request.getParameter("roomCount"));
			
			String radioButton = request.getParameter("roomRadio");
			
			//Get database
			DB db = mongoDB.getDB("HotelDetails");
			
			//Get table
			DBCollection RoomDetails = db.getCollection("RoomDetails");
			
			
			BasicDBObject newDocument = new BasicDBObject();
			
			if(radioButton.equals("ALL"))
			{
				newDocument.append("$set", new BasicDBObject().append("RoomRent", roomRent)).append("$set", new BasicDBObject().append("RoomCount", roomCount));
			
			}
			else if(radioButton.equals("RENT_ONLY"))
			{
				newDocument.append("$set", new BasicDBObject().append("RoomRent", roomRent));
			
			}else if(radioButton.equals("COUNT_ONLY"))
			{
				newDocument.append("$set", new BasicDBObject().append("RoomCount", roomCount));
			
			}
					
			BasicDBObject searchQuery = new BasicDBObject().append("RoomType", roomType);

			
			//Update
			
			RoomDetails.update(searchQuery, newDocument);	
			
			output.println("Document Updated successfully");
			
		}
		catch(MongoException e)
		{
			e.printStackTrace();
			
		}
	}
}