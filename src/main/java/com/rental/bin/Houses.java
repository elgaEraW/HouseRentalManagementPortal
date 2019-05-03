package com.rental.bin;

public class Houses {
	private String residental_detail;
	private String address;
	private String bhk;
	private String floor;
	private String available_after;
	private String payment_option;
	private String availability;
	private String user;
	private String price;
	private String contact_no;
	
	
	public String getContact_no() {
		return contact_no;
	}
	public void setContact_no(String contact_no) {
		this.contact_no = contact_no;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getResidental_detail() {
		return residental_detail;
	}
	public void setResidental_detail(String residental_detail) {
		this.residental_detail = residental_detail;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getBhk() {
		return bhk;
	}
	public void setBhk(String bhk) {
		this.bhk = bhk;
	}
	public String getFloor() {
		return floor;
	}
	public void setFloor(String floor) {
		this.floor = floor;
	}
	public String getAvailable_after() {
		return available_after;
	}
	public void setAvailable_after(String available_after) {
		this.available_after = available_after;
	}
	public String getPayment_option() {
		return payment_option;
	}
	public void setPayment_option(String payment_option) {
		this.payment_option = payment_option;
	}
	public String getAvailability() {
		return availability;
	}
	public void setAvailability(String availability) {
		this.availability = availability;
	}
	public String getUser() {
		return user;
	}
	public void setUser(String user) {
		this.user = user;
	}
	public Houses() {
		super();
	}
	public Houses(String residental_detail, String address, String bhk, String floor, String available_after,
			String payment_option, String availability, String user) {
		super();
		this.residental_detail = residental_detail;
		this.address = address;
		this.bhk = bhk;
		this.floor = floor;
		this.available_after = available_after;
		this.payment_option = payment_option;
		this.availability = availability;
		this.user = user;
	}
	
}
