package com.rental.model;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.rental.bin.Houses;

public class HousesDB {
	Database db = new Database();
	Connection con = db.getCon();
	String s;
	
	public String insert(Houses h) {
		try {
			Statement stmt = con.createStatement();
			stmt.executeUpdate("insert into houses(residental_detail,address,bhk,floor,available_after,payment_option,availability,price,user) values('"+h.getResidental_detail()+"','"+h.getAddress()
								+"','"+h.getBhk()+"','"+h.getFloor()+"','"+h.getAvailable_after()+"','"+h.getPayment_option()+"','"+h.getAvailability()+"','"+h.getPrice()+"','"+h.getUser()+"')");
			s = "Done";
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			s = "";
		}
		return s;
	}
}
