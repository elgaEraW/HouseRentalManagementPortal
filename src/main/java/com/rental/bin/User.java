package com.rental.bin;

public class User {

	
	private String name;
	private String pass;
	private String id;
	public User(String name, String pass, String id) {
		super();
		this.name = name;
		this.pass = pass;
		this.id = id;
	}
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPass() {
		return pass;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	
	
}
