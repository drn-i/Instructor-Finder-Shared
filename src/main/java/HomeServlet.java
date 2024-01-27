import java.io.*;
import java.util.List;

import connection.DatabaseConnection;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import model.Instructor;

@WebServlet(name = "HomeServletServlet", urlPatterns = {"", "/"})
public class HomeServlet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        List<Instructor> instructorList = InstructorsHandler.GetAllInstructors();
        request.setAttribute("instructors", instructorList);
        getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
    }

    public void destroy() {
        DatabaseConnection.CloseConnection();
        System.out.println("Destroyed!");
    }
}