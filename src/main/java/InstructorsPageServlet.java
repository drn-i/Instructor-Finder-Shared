import java.io.*;
import java.util.List;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import model.Instructor;

@WebServlet(name = "InstructorsPageServletServlet", value = "/instructors")
public class InstructorsPageServlet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String department = request.getParameter("department");
        if (department.equals("cnet")){
            department = "Computer & Network Eng";
        }
        else if (department.equals("it")) {
            department = "Information Technology";
        }
        else if (department.equals("cs")) {
            department = "Computer Science";
        }

        List<Instructor> instructorList = InstructorsHandler.GetDepartmentInstructors(department);
        request.setAttribute("instructorList", instructorList);

        if (department.equals("Computer & Network Eng")){
            getServletContext().getRequestDispatcher("/cnet-instructor-page.jsp").forward(request, response);
        }
        else if (department.equals("Information Technology")) {
            getServletContext().getRequestDispatcher("/it-instructor-page.jsp").forward(request, response);
        }
        else if (department.equals("Computer Science")) {
            getServletContext().getRequestDispatcher("/cs-instructor-page.jsp").forward(request, response);
        }
    }

    public void destroy() {

    }
}