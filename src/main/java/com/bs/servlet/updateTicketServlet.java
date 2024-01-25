//Use to Update Ticket Details

package com.bs.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bs.controller.ticketController;
import com.bs.model.ticket;

@WebServlet("/updateTicketServlet")
public class updateTicketServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String email = request.getParameter("email");
		String topic = request.getParameter("Topic");
		String message = request.getParameter("message");
		
		boolean isTrue;
		
		isTrue = ticketController.updateTicket(id, email, topic, message);
		
		if(isTrue == true) {
			
			List<ticket> ticketData = ticketController.getTicketDetails(id);
			request.setAttribute("details", ticketData);
			
			RequestDispatcher dis = request.getRequestDispatcher("viewTicketDetails.jsp");
			dis.forward(request, response);
		}else {
			RequestDispatcher dis = request.getRequestDispatcher("viewTicketDetails.jsp");
			dis.forward(request, response);
		}
		
		
		
		
		
	}

}
