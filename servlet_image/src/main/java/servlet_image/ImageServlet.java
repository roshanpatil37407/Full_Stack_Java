package servlet_image;

import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;


@WebServlet("/ImageServlet")

public class ImageServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Set response type
        response.setContentType("image/jpeg");

        // Get output stream
        ServletOutputStream out = response.getOutputStream();

        // Read image file
        FileInputStream fis = new FileInputStream("C:/images/sample.jpg");
        byte[] buffer = new byte[1024];
        int bytesRead;

        while ((bytesRead = fis.read(buffer)) != -1) {
            out.write(buffer, 0, bytesRead);
        }

        fis.close();
        out.close();
    }
}
