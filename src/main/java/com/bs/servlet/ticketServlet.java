//Use to insert ticket details

package com.bs.servlet;

import java.io.IOException;

import com.bs.controller.ticketController;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/ticketServlet")
public class ticketServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String email = request.getParameter("email");
		String topic = request.getParameter("topic");
		String message = request.getParameter("message");
		
		boolean isTrue;
		
		isTrue = ticketController.insertTicket(email, topic, message);
		
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("viewTickets.jsp");
			dis.forward(request, response);
		}else {
			RequestDispatcher dis = request.getRequestDispatcher("userlogin.jsp");
			dis.forward(request, response);
	}

	}
	
}
