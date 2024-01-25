//Use to update payment details


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

import com.bs.controller.paymentController;
import com.bs.model.payment;


@WebServlet("/PaymentUpdateServlet")
public class PaymentUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	@SuppressWarnings("deprecation")
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession(true);
		int userid = (int) session.getValue("User_ID");
		
		int paymentId = Integer.parseInt(request.getParameter("paymentId"));
		String cardName = request.getParameter("cardName");
		long cardNumber = Long.parseLong(request.getParameter("cardNumber"));
		int expYear = Integer.parseInt(request.getParameter("expYear"));
		int expMonth = Integer.parseInt(request.getParameter("expMonth"));
		int cvv = Integer.parseInt(request.getParameter("cvv"));
				
		boolean isTrue;
		
		isTrue = paymentController.updatePayment(paymentId, cardName, cardNumber, expYear, expMonth, cvv, userid);
		
		if(isTrue) {
			
			List<payment> cusDetails = paymentController.getPaymentDetails(userid);
			request.setAttribute("cusDetails", cusDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("paymentaccount.jsp");
			dis.forward(request, response);
		}
		else {
			
			//copy and paste the above line38/39 and replace the jsp with paymentaccount once its error free.
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
		
		
	}

}
