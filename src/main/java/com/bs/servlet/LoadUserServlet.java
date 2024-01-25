//use to load user details to user dashboard

package com.bs.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.bs.controller.userController;
import com.bs.model.user;

import javax.servlet.*;

@WebServlet("/LoadUserServlet")
public class LoadUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@SuppressWarnings("deprecation")
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession(true);
		String email =  (String) session.getValue("Email");

		List<user> usrDetails = userController.getUserDetails(email);
		request.setAttribute("usrDetails", usrDetails);
		
		RequestDispatcher dis = request.getRequestDispatcher("userDashboard.jsp");
		dis.forward(request, response);		
	}
}
