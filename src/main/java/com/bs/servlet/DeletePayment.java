//use to delete payment details

package com.bs.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bs.controller.paymentController;


@WebServlet("/DeletePayment")
public class DeletePayment extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Integer check = null;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	        int paymentId = Integer.parseInt(request.getParameter("paymentId"));
	        
	    	boolean isTrue = false;
	
	        isTrue = paymentController.deletePayment(paymentId);
	
	        if (isTrue) {
	
	            RequestDispatcher dis = request.getRequestDispatcher("success.jsp");
	            dis.forward(request, response);
	            
	        } else {
	            RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
	            dis2.forward(request, response);
	        }
	}

}
