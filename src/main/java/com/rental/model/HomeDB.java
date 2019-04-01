package com.rental.model;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.rental.bin.Houses;

public class HomeDB {
	Database db = new Database();
	Connection con = db.getCon();
	String s[][] = new String[100][9];
	String g[] = {"Id","residental_detail", "address", "bhk", "floor", "available_after", "payment_option", "availability", "user"};
	public String[][] getData() {
		try {
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("SELECT * FROM houses");
			for(int i=0;rs.next();i++) {
				for(int j =0;j<9;j++) {
					s[i][j] = rs.getString(g[j]);
				}
			}
			//g = rs.getString(2);
			//System.out.println(s+"Hello");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return s;
	}
}