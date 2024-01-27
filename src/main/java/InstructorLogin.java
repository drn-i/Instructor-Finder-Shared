import java.io.*;
import java.sql.ResultSet;

import connection.DatabaseConnection;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet(name = "InstructorLoginServlet", urlPatterns = "/intrustctorlogin")
public class InstructorLogin extends HttpServlet {


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try{
            //Get the parameters from the login jsp
            String username = request.getParameter("uname");
            String password = request.getParameter("password");

            //Get session
            HttpSession session = request.getSession();

            //Get the Result set
            ResultSet resultSet = DatabaseConnection.GetResultFromSQLQuery("SELECT * FROM instructorsaccounts WHERE username= '" + username + "' AND password= '" + password + "'");

            //Check the Result if Correct
            if (resultSet.next()){
                session.setAttribute("id", resultSet.getInt("id"));
                session.setAttribute("username", resultSet.getString("username"));

                response.sendRedirect("instructor-control-page.jsp");
            }
            else {
                String message = "You have enter wrong credentials";
                session.setAttribute("error", message);
                response.sendRedirect("login-page.jsp");
            }
        }
        catch (Exception e){
            System.out.println(e);
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //Get the session
        HttpSession session = request.getSession();

        //Check if there is id and username attributes
        if (session.getAttribute("id") != null && session.getAttribute("id") != ""){
            if (session.getAttribute("username") != null && session.getAttribute("username") != ""){
                response.sendRedirect("instructor-control-page.jsp");
            }
            else{
                response.sendRedirect("login-page.jsp");
            }
        }
        else{
            response.sendRedirect("login-page.jsp");
        }

    }

    public void destroy() {

    }
}