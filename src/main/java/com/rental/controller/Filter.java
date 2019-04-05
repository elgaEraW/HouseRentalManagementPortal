package com.rental.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.rental.model.HomeDB;

/**
 * Servlet implementation class Filter
 */
public class Filter extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Filter() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		String bhk = request.getParameter("bhk");
		String payment=request.getParameter("payment");
		String type=request.getParameter("type");
		String reset=request.getParameter("reset");

		HomeDB hdb = new HomeDB();
		String s[][]= null;
		if(bhk!=null)
			s = hdb.getFilteredBHKData(bhk);
		else if(payment!=null)
			s = hdb.getFilteredPaymentData(payment);
		else if(type!=null)
			s = hdb.getFilteredTypeData(type);
		else if(reset!=null)
			s = hdb.getData();
		HttpSession session = request.getSession();
		session.setAttribute("Data", s);
		int state = (int)session.getAttribute("State");
		if(state==0)
			response.sendRedirect("http://localhost:8080/HouseRentalManagementPortal/jsp/Home.jsp");
		else
			response.sendRedirect("http://localhost:8080/HouseRentalManagementPortal/jsp/LoggedIn.jsp");
	}

}
