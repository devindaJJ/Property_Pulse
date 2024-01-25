//use to delete user details

package com.bs.servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.io.IOException;

import com.bs.controller.userController;

@WebServlet("/deleteUserServlet")
public class deleteUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@SuppressWarnings("deprecation")
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession(true);
		int userid = (int) session.getValue("User_ID");
		
		
		boolean isTrue;
		isTrue = userController.deleteUser(userid);
		
		if(isTrue == true) {
			session.invalidate();
			String script = "<script>alert('Your has been Deleted!'); window.location='userlogin.jsp';</script>";
	        response.getWriter().println(script);
		}else {
			String script = "<script>alert('Try Again!'); window.location='userDashboard.jsp';</script>";
	        response.getWriter().println(script);
		}
		
	}

	
}
