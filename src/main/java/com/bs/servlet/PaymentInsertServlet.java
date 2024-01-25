//Use to insert payment details

package com.bs.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bs.controller.paymentController;

@WebServlet("/PaymentInsertServlet")
public class PaymentInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@SuppressWarnings("deprecation")
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession(true);
		int userid = (int) session.getValue("User_ID");
		
		String cardName = request.getParameter("cardName");
		long cardNumber = Long.parseLong(request.getParameter("cardNumber"));
		int expYear = Integer.parseInt(request.getParameter("expYear"));
		int expMonth = Integer.parseInt(request.getParameter("expMonth"));
		int cvv = Integer.parseInt(request.getParameter("cvv"));
				
		boolean isTrue;
		
		isTrue = paymentController.insertPaymentDetails(cardName, cardNumber, expYear, expMonth, cvv, userid);
		
		if(isTrue) {
			RequestDispatcher dis = request.getRequestDispatcher("success.jsp");
			dis.forward(request, response);
			
			System.out.print("Working but quite right");
		}
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
			
			response.setStatus(HttpServletResponse.SC_UNAUTHORIZED);
	        
	        // JavaScript to display an alert and redirect to login.jsp
	        PrintWriter out1 = response.getWriter();
	        out1.println("<script type='text/javascript'>");
	        out1.println("alert('Your user name or password is incorrect');");
	        out1.println("window.location='login.jsp';");
	        out1.println("</script>");
		}
		
	}

}
