package com.rental.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.rental.model.HomeDB;
import com.rental.model.HousesDB;
import com.rental.model.UserDB;

/**
 * Servlet implementation class Login
 */
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
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
		
		String id = request.getParameter("email");
		String pass = request.getParameter("password");
		UserDB ud = new UserDB();
		String Final = ud.login(id, pass);
		HttpSession session = request.getSession();
		session.setAttribute("name", Final);
		if(Final.equals("Enter Valid Email and Password"))
			response.sendRedirect("http://localhost:8080/HouseRentalManagementPortal/jsp/loginerror.jsp");
		else {
			session.setAttribute("State",1);
			HomeDB hdb = new HomeDB();
			String[][] s = hdb.getData();
			session.setAttribute("Data", s);
			int add = (int)session.getAttribute("Add");
			if(add==1)
				response.sendRedirect("http://localhost:8080/HouseRentalManagementPortal/jsp/AddHouse.jsp");
			else
				response.sendRedirect("http://localhost:8080/HouseRentalManagementPortal/jsp/LoggedIn.jsp");
		}
			
		//response.getWriter().println("\n"+Final);
	}

}
