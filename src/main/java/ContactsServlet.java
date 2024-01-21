import java.io.*;
import java.util.List;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import model.Contact;

@WebServlet(name = "ContactsServletServlet", urlPatterns = "/contact")
public class ContactsServlet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        List<Contact> contactList = ContactsHandler.GetAllContacts();
        request.setAttribute("contacts", contactList);
        getServletContext().getRequestDispatcher("/contact-page.jsp").forward(request, response);
    }

    public void destroy() {
        DatabaseConnection.CloseConnection();
    }
}