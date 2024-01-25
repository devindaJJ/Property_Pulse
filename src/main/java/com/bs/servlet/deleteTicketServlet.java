//use to delete ticket details

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

@WebServlet("/deleteTicketServlet")
public class deleteTicketServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		
		boolean isTrue;
		
		isTrue = ticketController.deleteTicket(id);
		
		if(isTrue == true) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("viewTickets.jsp");
			dispatcher.forward(request, response);
		}else {
			List<ticket> ticDetails = ticketController.getTicketDetails(id);
			request.setAttribute("ticDetails", ticDetails);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("abous.jsp");
			dispatcher.forward(request, response);
		}
		
	}

}
