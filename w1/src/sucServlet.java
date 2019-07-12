import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "sucServlet", value ="/suc" )
public class sucServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ServletContext c = this.getServletContext();
        String param1 = request.getParameter("param1");
        String param2 = request.getParameter("param2");
        String param3 = request.getParameter("param3");
        if (param1.length() == 0 ||param2.length() == 0 ||param3.length() == 0){
            c.setAttribute("p1",param1);
            c.setAttribute("p2",param2);
            c.setAttribute("p3",param3);
            response.sendRedirect("success.jsp");
        }
        else{
            c.setAttribute("F",param1);
            c.setAttribute("L",param2);
            response.getWriter().println("                          Registering\nFirst Name:"
                    + param1 + "\nLast Name:" + param2 + "\nEmail Address:" + param3);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
