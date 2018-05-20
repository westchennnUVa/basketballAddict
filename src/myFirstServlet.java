/**
 * Created by Westchennn on 3/13/18.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class myFirstServlet extends HttpServlet{
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {

//        out.println("<html>");
//        out.println("<body>");
//        out.println("   <form action=" + request.getContextPath() + " method = \"post\" >");
//        out.println("     <input type=\"text\" name=\"user\" />");
//        out.println("       <");
//        out.println("</body>");
//        out.println("</html>");
//        out.close();





    }


    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        out.println("Hello, world!!!");
        out.close();



    }
}
