//Use to View ticket details

package com.bs.servlet;

import java.io.IOException;
import java.util.List;
import com.bs.controller.ticketController;
import com.bs.model.ticket;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/viewTicketServlet")
public class viewTicketServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String email = request.getParameter("email");
		
		try {
		List <ticket> ticket = ticketController.viewTicket(email);
		request.setAttribute("details", ticket);
		}catch(Exception e) {
			e.printStackTrace();
		}
		RequestDispatcher dis = request.getRequestDispatcher("viewTicketDetails.jsp");
		dis.forward(request, response);
		
		
		
	}

}
