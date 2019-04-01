package com.rental.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.rental.bin.User;
import com.rental.model.UserDB;

/**
 * Servlet implementation class Register
 */
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Register() {
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
		
		String name = request.getParameter("name");
		String id = request.getParameter("email");
		String pass = request.getParameter("password");
		UserDB ud = new UserDB();
		User u = new User(name,pass,id);
		String s = ud.insert(u);
		HttpSession session = request.getSession();
		session.setAttribute("email", id);
		session.setAttribute("name", name);
		session.setAttribute("State", 1);
		if(s.equals("Data Inserted"))
			response.sendRedirect("http://localhost:8080/HouseRentalManagementPortal/jsp/LoggedIn.jsp");
		//response.getWriter().println("\n"+s);
		ud.display();
	}

}
