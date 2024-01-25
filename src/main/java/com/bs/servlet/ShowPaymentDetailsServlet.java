//Use to retrieve payment details


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

@WebServlet("/ShowPaymentDetailsServlet")
public class ShowPaymentDetailsServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @SuppressWarnings("deprecation")
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
		HttpSession session = request.getSession(true);
		int userid = (int) session.getValue("User_ID");

        List<payment> cusDetails = paymentController.getPaymentDetails(userid);
        request.setAttribute("cusDetails", cusDetails);

       
        RequestDispatcher dispatcher = request.getRequestDispatcher("paymentaccount.jsp");
        dispatcher.forward(request, response);
    }
}
