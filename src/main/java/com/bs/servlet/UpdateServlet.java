//This servlet use to update user details

package com.bs.servlet;

import javax.servlet.RequestDispatcher;

import javax.servlet.ServletException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import com.bs.model.user;
import com.bs.controller.userController;

@SuppressWarnings("unused")
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@SuppressWarnings("deprecation")
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession(true);
		int userid = (int) session.getValue("User_ID");
		String email = request.getParameter("email");
		String fname =  request.getParameter("firstname");
		String lname =  request.getParameter("lastname");
		String birthday =  request.getParameter("birthday");
		String phone = request.getParameter("phone");
		
		boolean isTrue;
		
		isTrue = userController.updateCustomer(userid, fname, lname, birthday, phone);
		
		if(isTrue==true)
		{
			
			List<user> cusDetails = userController.getUserDetails(email);
			request.setAttribute("userrrDetails", cusDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("userDashboard.jsp");
			dis.forward(request, response);
		}else {
			List<user> cusDetails = userController.getUserDetails(email);
			request.setAttribute("userrrDetails", cusDetails);
			
			RequestDispatcher dis2 = request.getRequestDispatcher("userAccount.jsp");
			dis2.forward(request, response);
		}
	}

}
