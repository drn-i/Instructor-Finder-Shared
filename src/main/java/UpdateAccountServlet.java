import java.io.*;
import java.sql.ResultSet;

import connection.DatabaseConnection;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet(name = "UpdateAccountServletServlet", value = "/updateaccount")
public class UpdateAccountServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            HttpSession session = request.getSession();

            int id = (int) session.getAttribute("id");
            String username = request.getParameter("usernameInput");
            String oldPassword = request.getParameter("oldPasswordInput");
            String newPassword = request.getParameter("newPasswordInput");

            if (newPassword.length() <= 20){
                ResultSet resultSet = DatabaseConnection.GetResultFromSQLQuery("SELECT * FROM instructorsaccounts WHERE id=" + id);
                resultSet.next();

                if (oldPassword.equals(resultSet.getString("password"))){
                    int i = DatabaseConnection.UpdateAccount(id, username, newPassword);
                    if (i == 1){
                        String updateDone = "Account Credentials Updated!";
                        session.setAttribute("update-done", updateDone);
                        session.removeAttribute("id");
                        session.removeAttribute("username");
                        response.sendRedirect("/intrustctorlogin");
                    }
                    else {
                        String updateError = "Error Occurs While Updating Account Credentials for Instructor";
                        session.setAttribute("update-error", updateError);
                        response.sendRedirect("update-account-page.jsp");
                    }
                }
                else {
                    String error2 = "The old password is incorrect!";
                    session.setAttribute("oldpass-error", error2);
                    response.sendRedirect("update-account-page.jsp");
                }
            }
            else {
                String error = "The maximum password length is 20";
                session.setAttribute("length-error", error);
                response.sendRedirect("update-account-page.jsp");
            }

        }
        catch (Exception e){
            e.printStackTrace();
        }
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        HttpSession session = request.getSession();

        if (session.getAttribute("id") != null && session.getAttribute("id") != ""){
            if (session.getAttribute("username") != null && session.getAttribute("username") != ""){
                response.sendRedirect("update-account-page.jsp");
            }
            else {
                response.sendRedirect("login-page.jsp");
            }
        }
        else {
            response.sendRedirect("login-page.jsp");
        }
    }

    public void destroy() {

    }
}