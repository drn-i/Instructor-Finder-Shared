import java.io.*;

import com.google.common.io.Files;
import connection.DatabaseConnection;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet(name = "ImageUpdateHandlerServlet", urlPatterns = "/imageupdatehandler")
@MultipartConfig(
        maxFileSize = 1024 * 1024 * 10, //10MB
        maxRequestSize = 1024 * 1024 * 20 //20MB
)
public class ImageUpdateHandler extends HttpServlet {

    public static final String IMAGES_PATH = "public/external/";
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            HttpSession session = request.getSession();
            int id = (int) session.getAttribute("id");

            Part imageFile = request.getPart("imageInput");
            String imageFileName = imageFile.getSubmittedFileName();
            String fileExtension = Files.getFileExtension(imageFileName);
            Long imageSize = imageFile.getSize();

            if (fileExtension.equals("png") || fileExtension.equals("jpg") || fileExtension.equals("jpeg")){
                if (imageSize <= 3000000){
                    int i = DatabaseConnection.UpdateInstructorImage(id, imageFileName);

                    if (i == 1){
                        String savePath = getServletContext().getRealPath("") + IMAGES_PATH;
                        File file = new File(savePath);
                        imageFile.write(savePath + File.separator + imageFileName);

                        String imageUpdated = "The Image has been Updated successfully";
                        session.setAttribute("image-updated", imageUpdated);
                        response.sendRedirect("/intrustctorlogin");
                    }
                    else {
                        String imageUpdatedError = "An Error Occurs While Trying to Update Your Image";
                        session.setAttribute("image-update-error", imageUpdatedError);
                        response.sendRedirect("/intrustctorlogin");
                    }
                }
                else {
                    String imageSizeError = "Error, The Max Allowed Image Size is 2MB";
                    session.setAttribute("image-size-error", imageSizeError);
                    response.sendRedirect("/intrustctorlogin");
                }
            }
            else {
                String imageFormatError = "Error, The Formats allowed are PNG OR JPG";
                session.setAttribute("image-format-error", imageFormatError);
                response.sendRedirect("/intrustctorlogin");
            }

        }
        catch (Exception e){
            e.printStackTrace();
        }
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.sendRedirect("/intrustctorlogin");
    }

    public void destroy() {

    }
}