import java.util.HashMap;
import java.util.Map;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;

public class AdminPage extends HttpServlet implements java.io.Serializable {
   
    
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, java.io.IOException 
	{
		
		
		
        String username = request.getParameter("userid");
        String password = request.getParameter("password");
		HttpSession session = request.getSession(true);
		
		
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		Map<String, String> adminFile = new HashMap<String, String>();
		
		adminFile.put("Admin1", "12345");
		adminFile.put("Admin2", "12345");
		adminFile.put("Admin3", "12345");
		
			
		
		synchronized(session)
		{
			if(username != null && username.length() != 0) 
			{
				username = username.trim();
			}
			
			if(password != null && password.length() != 0) 
			{
				password = password.trim();
			}
			
			if(username != null &&
				password != null && username!="") 
			{
					out.println("<html>");
					out.println("<body>");
					for (Map.Entry<String, String> map : adminFile.entrySet()) 
					{
						if (map.getKey().equals(username)
								&& map.getValue().equals(password)) 
						{

							response.sendRedirect("AdminPage.html");
							

						} 
					}
					out.print("Authorization Failure!");
					out.println("<br><br><a href='AdminPage.html'> HOME </a>");
					out.println("</body>");
					out.println("</html>");
					out.close();
			}
			else 
			{
				out.println("Authorization Failure!  You must supply a username and password");
				out.println("<br><br><a href='index.jsp'> HOME </a>");
			}			
		}
		
	}

   
	
	
	   
    /** Handles the HTTP <code>GET</code> method.
    * @param request servlet request
    * @param response servlet response
    */
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, java.io.IOException {
        processRequest(request, response);
    }

    /** Handles the HTTP <code>POST</code> method.
    * @param request servlet request
    * @param response servlet response
    */
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, java.io.IOException {
        processRequest(request, response);
    }
}
