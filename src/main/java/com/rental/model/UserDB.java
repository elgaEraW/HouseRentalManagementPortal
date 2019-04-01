package com.rental.model;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.rental.bin.User;


public class UserDB {
	public String insert(User u) {
		Database db = new Database();
		Connection con = db.getCon();
		String s = "Error";
		try {
			Statement stmt = con.createStatement();
			stmt.executeUpdate("insert into users(Id,Pass,Name) values('"+u.getId()+"','"+u.getPass()+"','"+u.getName()+"')");
			s = "Data Inserted";
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return s;
	}
	public void display() {
		Database db = new Database();
		Connection con = db.getCon();
		//String s = "Error";
		try {
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("SELECT * FROM users");
			for(;rs.next();) {
				String data = rs.getString("Name");
				System.out.print("Name: "+data+"    ");
				data = rs.getString("Id");
				System.out.println("Email: "+data+"      ");
				data = rs.getString("Pass");
				System.out.println("Pass: "+data);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public String login(String Id, String Pass) {
		Database db = new Database();
		Connection con = db.getCon();
		boolean flag = false;
		String s;
		try {
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("SELECT * FROM users");
			for(;rs.next();) {
				flag = false;
				String id = rs.getString("Id");
				String pass = rs.getString("Pass");
				if(id.equals(Id)) {
					if(pass.equals(Pass)) {
						flag = true;
						break;
					}
				}
			}
			if(!flag)
				return s = "Enter Valid Email and Password";
			return s = rs.getString("Name");
		}catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "";
	}
}
