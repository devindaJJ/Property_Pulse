//Display single property details using property id

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

@WebServlet("/DisplayPropByPropID")
public class DisplayPropByPropID extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("propid");

		List<property> propDetails = propertyController.getPropertyDetailsByPropId(id);
		request.setAttribute("propDetails", propDetails);
		
		RequestDispatcher dis = request.getRequestDispatcher("DisplayProperty.jsp");
		dis.forward(request, response);		
	}

}
