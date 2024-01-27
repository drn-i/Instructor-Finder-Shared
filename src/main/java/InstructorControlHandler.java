import java.io.*;

import connection.DatabaseConnection;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet(name = "InstructorControlHandlerServlet", urlPatterns = "/instructorcontrol")
public class InstructorControlHandler extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try{
            HttpSession session = request.getSession();
            int id = (int) session.getAttribute("id");
            String firstName = request.getParameter("firstNameInput");
            String lastName = request.getParameter("lastNameInput");
            String email = request.getParameter("emailInput");
            String phoneNumber = request.getParameter("phoneInput");

            int i = DatabaseConnection.UpdateInstructorInformations(id, firstName, lastName, email, phoneNumber);
            if (i == 1){
                String updateDone = "Your information has been updated!";
                session.setAttribute("update-done", updateDone);
                response.sendRedirect("/intrustctorlogin");
            }
            else {
                String updateError = "An Error Occurs While Trying to Update Your Informations";
                session.setAttribute("update-error", updateError);
                response.sendRedirect("/intrustctorlogin");
            }

        }
        catch (Exception e){
            System.out.println(e);
        }
    }

    public void destroy() {
    }
}