//Use to redirect to update property details page with selected property id

package com.bs.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.bs.controller.propertyController;
import com.bs.model.property;

@WebServlet("/UpdateDisplayServlet")
public class UpdateDisplayServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
		    String propid = request.getParameter("propid");
		    List<property> propDetails = propertyController.getPropertyDetailsByPropId(propid);
			request.setAttribute("propDetails", propDetails);
		} catch (NumberFormatException e) {
		    e.printStackTrace();
		}
		
		RequestDispatcher dis = request.getRequestDispatcher("UpdateProperty.jsp");
		dis.forward(request, response);		
		
		
	}

}
