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

public class SubmitReviews extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	MongoClient mongo;
	
	public void init() throws ServletException{
      	// Connect to Mongo DB
		mongo = new MongoClient("localhost", 27017);
		
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// Define variables to construct the page 
		String pageHeading = "Submit Review";
		String pageContent =" ";
		String myPage = " ";
		String tableData = " ";
		
		int count = 0;
		
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		
		try {
			
			// Get the form data
			String category = request.getParameter("category");
			String stayDate = request.getParameter("stayDate");
			String userID = request.getParameter("userID");
			int userAge = Integer.parseInt(request.getParameter("userAge"));
			String userGender = request.getParameter("userGender");
			int reviewRating = Integer.parseInt(request.getParameter("reviewRating"));
			String reviewDate = request.getParameter("reviewDate");
			String reviewText = request.getParameter("reviewText");
			
			DB db = mongo.getDB("Project595");
			// If the collection does not exists, MongoDB will create it for you
			DBCollection myReviews = db.getCollection("myReviews");

			BasicDBObject doc = new BasicDBObject("title", "MongoDB").append("category", category)
					.append("stayDate", stayDate)
					.append("userID", userID).append("userAge", userAge)
					.append("userGender", userGender)
					.append("reviewRating", reviewRating).append("reviewDate", reviewDate)
					.append("reviewText", reviewText);

			myReviews.insert(doc);

			out.println("<html>");
			out.println("<head> </head>");
			out.println("<body>");
			out.println("<h1> Review submitted for:"+ userID + "</h1><br>");
			
			//Construct the page here
			out.println("Thank You for the Feedback.<br><br>");
			out.println("<br><br><a href='index.jsp'> HOME </a>");
			out.println("</body>");
			out.println("</html>");

		} catch (MongoException e) {
			e.printStackTrace();
		}

	}

}