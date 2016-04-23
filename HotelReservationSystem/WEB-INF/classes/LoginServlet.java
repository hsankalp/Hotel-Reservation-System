import java.util.HashMap;
import java.util.Map;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;

public class LoginServlet extends HttpServlet implements java.io.Serializable {
   
    
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, java.io.IOException {
		
		
		
        String username = request.getParameter("userid");
        String password = request.getParameter("password");
		HttpSession session = request.getSession(true);
		
		
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		
		synchronized(session){
        if(username != null && username.length() != 0) {
            username = username.trim();
        }
        if(password != null && password.length() != 0) {
            password = password.trim();
        }
        if(username != null &&
            password != null && username!="") {
				
			
				
				out.println("<html>");
				out.println("<body>");
				String sRootPath = new File("Usernames.txt").getAbsolutePath();
				File file = new File(sRootPath);
				Map<String, String> mapOutFile = new HashMap<String, String>();
				if (!file.exists()) {
					file.createNewFile();
					}else{
				try {
				File toRead = new File(sRootPath);
				FileInputStream fis = new FileInputStream(file);
				ObjectInputStream pw = new ObjectInputStream(fis);
				mapOutFile = (HashMap<String, String>) pw.readObject();
				for (Map.Entry<String, String> map : mapOutFile.entrySet()) {
					if (map.getKey().equals(username)
							&& map.getValue().equals(password)) {

						
						response.sendRedirect("UserPage.jsp");
						

							} 
									pw.close();
									fis.close();
								}
						out.print("Login Failure!");
						out.println("<br><br><a href='index.jsp'> HOME </a>");
									
			} catch (Exception ex) {
				ex.printStackTrace();
					}
				}
				out.println("</body>");
				out.println("</html>");
				out.close();
			}
			
			 
        
		else {
            out.println("Login Failure!  You must supply a username and password");
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
