package com.rental.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.rental.model.HomeDB;

/**
 * Servlet implementation class More_Info
 */
public class More_Info extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public More_Info() {
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
		
		String id = request.getParameter("id");
		System.out.println(id);
		HomeDB hdb = new HomeDB();
		String s[]= null;
		
		s = hdb.getIdData(id);
		HttpSession session = request.getSession();
		session.setAttribute("Info",s);
		session.setAttribute("ID_NO", id);
		session.setAttribute("User_Name", s[9]);
		response.sendRedirect("http://localhost:8080/HouseRentalManagementPortal/jsp/more_info.jsp");
	}

}
