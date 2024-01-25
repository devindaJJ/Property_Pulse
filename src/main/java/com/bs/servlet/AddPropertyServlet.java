//use to insert property details

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
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.bs.controller.propertyController;

@WebServlet(name = "/AddPropertyServlet" ,urlPatterns = {"/AddPropertyServlet"})
@MultipartConfig(maxFileSize = 16177216)
public class AddPropertyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	PrintWriter out;

	@SuppressWarnings("deprecation")
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html;charset=UTF-8");
		out=response.getWriter();
		
		HttpSession session = request.getSession(true);
		int userid = (int) session.getValue("User_ID");
		
		String proptitle = request.getParameter("title");
		String description = request.getParameter("description");
		String propstatus = request.getParameter("status");
		String proptype = request.getParameter("type");
		String propRooms = request.getParameter("rooms");
		String propprice = request.getParameter("price");
		String landsize = request.getParameter("landsize");
		Part filePart = request.getPart("image");
        InputStream image=filePart.getInputStream();
		String address = request.getParameter("address");
		String propcity = request.getParameter("city");
		
		
		boolean isTrue;
		isTrue = propertyController.insertproperty(proptitle, description, propstatus, proptype, propRooms, propprice, landsize, address, propcity, userid, image);
		
		if (isTrue==true) {
			PrintWriter out1 = response.getWriter();
			out1.println("<script type='text/javascript'>");
			out1.println("alert('Successfully Added your property!');");
			out1.println("window.location='userDashboard.jsp';");  // Redirect after showing the alert
			out1.println("</script>");

		} else {
			
			PrintWriter out1 = response.getWriter();
	        out1.println("<script type='text/javascript'>");
	        out1.println("alert('Cannot Add Your Property...Try again');");
	        out1.println("window.location='addproperty.jsp';");
	        out1.println("</script>");
		}
	}
}