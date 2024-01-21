import java.io.*;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import model.Instructor;

@WebServlet(name = "InstructorServletServlet", urlPatterns = "/instructor")
public class InstructorServlet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String id = request.getParameter("id");
        Instructor instructor = InstructorsHandler.GetInstructor(id);
        if (instructor != null){
            int instructorID = instructor.getInstructorID();
            String firstName = instructor.getFirstName();
            String lastName = instructor.getLastName();
            String photoLink = instructor.getPhotoLink();
            String social1 = instructor.getSocial1();
            String social2 = instructor.getSocial2();
            String floor = instructor.getFloor();
            String department = instructor.getDepartment();
            String office = instructor.getOffice();
            String departmentView = instructor.getDepartmentView();

            request.setAttribute("id", instructorID);
            request.setAttribute("firstName", firstName);
            request.setAttribute("lastName", lastName);
            request.setAttribute("photoLink", photoLink);
            request.setAttribute("social1", social1);
            request.setAttribute("social2", social2);
            request.setAttribute("floor", floor);
            request.setAttribute("department", department);
            request.setAttribute("office", office);
            request.setAttribute("departmentView", departmentView);

            getServletContext().getRequestDispatcher("/instructor-page.jsp").forward(request, response);
        }
        else {
            response.sendRedirect("/instructors?department=cnet");
        }

    }

    public void destroy() {
        DatabaseConnection.CloseConnection();
    }
}