package com.rental.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.rental.bin.Houses;
import com.rental.model.HomeDB;
import com.rental.model.HousesDB;

/**
 * Servlet implementation class HousesData
 */
public class HousesData extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HousesData() {
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
		Houses h = new Houses();
		HousesDB hdb = new HousesDB(); 
		//response.getWriter().print(s);
		HttpSession session = request.getSession();
		h.setUser((String)session.getAttribute("name"));
		h.setAddress(request.getParameter("address"));
		h.setResidental_detail(request.getParameter("residental_detail"));
		h.setBhk(request.getParameter("bhk"));
		h.setFloor(request.getParameter("floor"));
		h.setAvailable_after(request.getParameter("available_after"));
		h.setPayment_option(request.getParameter("payment_option"));
		h.setAvailability(request.getParameter("availability"));
		h.setPrice(request.getParameter("price"));
		h.setContact_no(request.getParameter("contact_no"));
		String st = hdb.insert(h);
		HomeDB homedb = new HomeDB();
		String[][] s = homedb.getData();
		session.setAttribute("Data", s);
		if(st.equals("Done")) {
			session.setAttribute("Add", 0);
			response.sendRedirect("http://localhost:8080/HouseRentalManagementPortal/jsp/LoggedIn.jsp");
		}
		else
			response.sendRedirect("http://localhost:8080/HouseRentalManagementPortal/jsp/AddHouse.jsp");
	}

}
