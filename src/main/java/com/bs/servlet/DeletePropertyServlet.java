//use to delete property details

package com.bs.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bs.controller.propertyController;


@WebServlet("/DeletePropertyServlet")
public class DeletePropertyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String id = request.getParameter("propid");

		boolean isTrue;
		isTrue = propertyController.deleteProperty(id);
		
		if(isTrue == true) {
			PrintWriter out1 = response.getWriter();
			out1.println("<script type='text/javascript'>");
			out1.println("alert('Successfully Delete your Property!');");
			out1.println("window.location='userDashboard.jsp';");  // Redirect after showing the alert
			out1.println("</script>");
		}else {
			String script = "<script>alert('Try Again!'); window.location='userDashboard.jsp';</script>";
	        response.getWriter().println(script);
		}
		
	}

}
