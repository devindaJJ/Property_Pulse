//Use to validate user login

package com.bs.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bs.controller.userController;
import com.bs.model.user;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.setContentType("text/html");
		
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		boolean isTrue;
		
		isTrue = userController.validate(email, password);
		
		if(isTrue) {
			
			HttpSession session = request.getSession(true);

            // Store user information in the session
            session.setAttribute("User_ID", userController.getUserIdByEmail(email));
            session.setAttribute("Email", email);
			
			
			List<user> usrDetails = userController.getUserDetails(email);
			request.setAttribute("usrDetails", usrDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("userDashboard.jsp");
			dis.forward(request, response);		
		}
		else 
		{
			response.setStatus(HttpServletResponse.SC_UNAUTHORIZED);
	        
	        // JavaScript to display an alert and redirect to login.jsp
	        PrintWriter out1 = response.getWriter();
	        out1.println("<script type='text/javascript'>");
	        out1.println("alert('Your user name or password is incorrect');");
	        out1.println("window.location='userlogin.jsp';");
	        out1.println("</script>");
		} 
	
	}

}
