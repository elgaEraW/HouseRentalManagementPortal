package com.rental.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.rental.model.HomeDB;

/**
 * Servlet implementation class User_Info
 */
public class User_Info extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public User_Info() {
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
		
		String cd = request.getParameter("cd");
		HttpSession session = request.getSession();
		int state = (int)session.getAttribute("State");
		String id = (String)session.getAttribute("ID_NO");
		String user = (String)session.getAttribute("User_Name");
		session.setAttribute("Contact_Info",1);
		HomeDB hdb = new HomeDB();
		String s[] = null;
		if(state == 0) {
			response.sendRedirect("http://localhost:8080/HouseRentalManagementPortal/jsp/login.jsp");
		}
		else {
			s = hdb.getUserData(id,user);
			session.setAttribute("User_Info", s);
			response.sendRedirect("http://localhost:8080/HouseRentalManagementPortal/jsp/user_info.jsp");
		}
	}

}
