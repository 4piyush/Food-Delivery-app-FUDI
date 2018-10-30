package com.beans;

public class User {
	private String username;
	private String email;
	private String number;
	private String address;
	private String security_ques;
	private String security_ans;
	public User(){}
	public User(String username, String email, String number, String address, String security_ques, String security_ans) {
		super();
		this.username = username;
		this.email = email;
		this.number = number;
		this.address = address;
		this.security_ques = security_ques;
		this.security_ans = security_ans;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getNumber() {
		return number;
	}
	public void setNumber(String number) {
		this.number = number;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	@Override
	public String toString() {
		return "User [username=" + username + ", email=" + email + ", number=" + number + ", address=" + address
				+ ", security_ques=" + security_ques + ", security_ans=" + security_ans + "]";
	}
	public String getSecurity_ques() {
		return security_ques;
	}
	public void setSecurity_ques(String security_ques) {
		this.security_ques = security_ques;
	}
	public String getSecurity_ans() {
		return security_ans;
	}
	public void setSecurity_ans(String security_ans) {
		this.security_ans = security_ans;
	}
	

	
	
	
}
