//Use to insert new user details

package com.bs.servlet;

import javax.servlet.ServletException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import com.bs.controller.userController;


public class registerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String fname =  request.getParameter("firstname");
		String lname =  request.getParameter("lastname");
		String birthday =  request.getParameter("birthday");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String password  = request.getParameter("password");
		
		
		boolean isTrue;
		isTrue = userController.insertcustomer(fname, lname, birthday, phone, email, password);
		
		if (isTrue==true) {
			String script = "<script>alert('Successfully registered!'); window.location='userlogin.jsp';</script>";
	        response.getWriter().println(script);
		}
		else 
		{
			response.setStatus(HttpServletResponse.SC_UNAUTHORIZED);
	        
	        // JavaScript to display an alert and redirect to login.jsp
	        PrintWriter out1 = response.getWriter();
	        out1.println("<script type='text/javascript'>");
	        out1.println("alert('You cannot register right now. Try again later....');");
	        out1.println("window.location='userlogin.jsp';");
	        out1.println("</script>");
		} 
	}

}
