//This servlet use to update Property details

package com.bs.servlet;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.bs.controller.propertyController;


@WebServlet(name = "/UpdatePropertyServlet", urlPatterns = { "/UpdatePropertyServlet" })
@MultipartConfig(maxFileSize = 16177216)
public class UpdatePropertyServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");

        String propId = request.getParameter("propertyId");
        String proptitle = request.getParameter("title");
        String description = request.getParameter("description");
        String propstatus = request.getParameter("status");
        String proptype = request.getParameter("type");
        String propRooms = request.getParameter("rooms");
        String propprice = request.getParameter("price");
        String landsize = request.getParameter("landsize");
        Part filePart = request.getPart("image");
        InputStream image = filePart.getInputStream();
        String address = request.getParameter("address");
        String propcity = request.getParameter("city");

        boolean isTrue;
        isTrue = propertyController.updateProperty(propId, proptitle, description, propstatus, proptype, propRooms, propprice, landsize, address, propcity, image);

        if (isTrue) {
        	PrintWriter out1 = response.getWriter();
			out1.println("<script type='text/javascript'>");
			out1.println("alert('Successfully Update your Property!');");
			out1.println("window.location='userDashboard.jsp';");  // Redirect after showing the alert
			out1.println("</script>");
        } else {

            PrintWriter out1 = response.getWriter();
            out1.println("<script type='text/javascript'>");
            out1.println("alert('Cannot Update Your Property...Try again');");
            out1.println("window.location='UpdateProperty.jsp';");
            out1.println("</script>");
        }
    }
}
