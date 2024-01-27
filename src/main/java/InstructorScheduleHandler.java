import java.io.*;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;

import connection.DatabaseConnection;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import model.InstructorSchedule;

@WebServlet(name = "InstructorScheduleHandlerServlet", value = "/InstructorSchedule")
public class InstructorScheduleHandler extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //Add Schedule Row Form Handler
        try {
            HttpSession session = request.getSession();
            int id = (int) session.getAttribute("id");
            String day = request.getParameter("dayInput");

            LocalTime localTime = LocalTime.parse(request.getParameter("timeInput"));
            DateTimeFormatter formatter = DateTimeFormatter.ofPattern("hh:mm a");
            String time = localTime.format(formatter);

            String title = request.getParameter("titleInput");

            InstructorSchedule instructorSchedule = new InstructorSchedule(id, day, time, title);
            int i = DatabaseConnection.AddInstructorScheduleRow(instructorSchedule);

            if (i == 1){
                String added = "The row has been added successfully";
                session.setAttribute("added", added);
                response.sendRedirect("/intrustctorlogin");
            }
            else {
                String addError = "An Error Occurs While Trying to Add Your Schedule Row";
                session.setAttribute("addError", addError);
                response.sendRedirect("/intrustctorlogin");
            }

        }
        catch (Exception e){
            System.out.println(e);
        }
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        //Delete Schedule Row Function
        HttpSession session = request.getSession();
        int id = (int) session.getAttribute("id");
        if (session.getAttribute("id") != null && session.getAttribute("id") != ""){
            if (session.getAttribute("username") != null && session.getAttribute("username") != ""){
                String rowID = request.getParameter("rowid");
                try {
                    int i = DatabaseConnection.DeleteInstructorScheduleRow(id, Integer.valueOf(rowID));
                    if (i == 1){
                        String deleteDone = "Row Deleted";
                        session.setAttribute("delete-done", deleteDone);
                        response.sendRedirect("/intrustctorlogin");
                    }
                    else {
                        String deleteError = "An Error Occurs While Trying to Delete the Row";
                        session.setAttribute("delete-error", deleteError);
                        response.sendRedirect("/intrustctorlogin");
                    }
                }
                catch (Exception e){
                    e.printStackTrace();
                }
            }
            else {
                response.sendRedirect("/intrustctorlogin");
            }
        }
        else {
            response.sendRedirect("/intrustctorlogin");
        }
    }

    public void destroy() {

    }
}