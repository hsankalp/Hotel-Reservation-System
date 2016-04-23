import java.io.IOException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.util.HashMap;
import java.util.Iterator;

public class AutoCompleteServlet extends HttpServlet {

    private ServletContext context;
    private ProductData prodData = new ProductData();
    private HashMap products = prodData.getProducts();

    @Override
    public void init(ServletConfig config) throws ServletException {
        this.context = config.getServletContext();
    }

    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException, ServletException {

        String action = request.getParameter("action");
        String targetId = request.getParameter("id");
        StringBuffer sb = new StringBuffer();

        if (targetId != null) {
            targetId = targetId.trim().toLowerCase();
        } else {
            context.getRequestDispatcher("/error.jsp").forward(request, response);
        }

        boolean namesAdded = false;
        if (action.equals("complete")) {

            // check if user sent empty string
            if (!targetId.equals("")) {

                Iterator it = products.keySet().iterator();

                while (it.hasNext()) {
                    String id = (String) it.next();
                    Product product = (Product) products.get(id);

                    if (product.getFirstName().toLowerCase().startsWith(targetId)) {

                        sb.append("<product>");
                        sb.append("<id>" + product.getId() + "</id>");
                        sb.append("<firstName>" + product.getFirstName() + "</firstName>");
                        sb.append("</product>");
                        namesAdded = true;
                    }
                }
            }

            if (namesAdded) {
                response.setContentType("text/xml");
                response.setHeader("Cache-Control", "no-cache");
                response.getWriter().write("<products>" + sb.toString() + "</products>");
            } else {
                //nothing to show
                response.setStatus(HttpServletResponse.SC_NO_CONTENT);
            }
        }

        if (action.equals("lookup")) {
			
			if ((targetId != null) && products.containsKey(targetId.trim()) && (targetId.equals("1") || targetId.equals("2") || targetId.equals("3") || targetId.equals("4"))) {
                request.setAttribute("product", products.get(targetId));
                context.getRequestDispatcher("/Rooms.jsp").forward(request, response);
            }else if ((targetId != null) && products.containsKey(targetId.trim()) && (targetId.equals("5") || targetId.equals("6") || targetId.equals("7") || targetId.equals("8"))) {
                request.setAttribute("product", products.get(targetId));
                context.getRequestDispatcher("/Suites.jsp").forward(request, response);
            }else if ((targetId != null) && products.containsKey(targetId.trim()) && (targetId.equals("9") || targetId.equals("10") || targetId.equals("11") || targetId.equals("12"))) {
                request.setAttribute("product", products.get(targetId));
                context.getRequestDispatcher("/Facilities.jsp").forward(request, response);
            }else if ((targetId != null) && products.containsKey(targetId.trim()) && (targetId.equals("13") || targetId.equals("14") || targetId.equals("15"))) {
                request.setAttribute("product", products.get(targetId));
                context.getRequestDispatcher("/Dining.jsp").forward(request, response);
            }
			
        }
    }
}
