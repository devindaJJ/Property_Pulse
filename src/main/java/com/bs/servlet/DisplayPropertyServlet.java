package com.bs.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bs.controller.propertyController;
import com.bs.model.property;

@WebServlet("/DisplayPropertyServlet")
public class DisplayPropertyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@SuppressWarnings("deprecation")
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		HttpSession session = request.getSession(true);
		int userid = (int) session.getValue("User_ID");
		
		List<property> propDetails = propertyController.getPropertyDetailsbyUserid(userid);
		request.setAttribute("propDetails", propDetails);
		
	    RequestDispatcher dis = request.getRequestDispatcher("userDashboard.jsp");
	    dis.forward(request, response);
	}

}
