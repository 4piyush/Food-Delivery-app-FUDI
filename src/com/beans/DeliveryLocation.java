package com.beans;

public class DeliveryLocation {
	//public DeliveryLocation(){}
	
	private String firstName;
	private String lastName;
	private String landmark;
	private String street;
	private String city;
	private String pincode;
	private String state;
	private String country;
	private String phone;
	public DeliveryLocation(){}
	@Override
	public String toString() {
		return firstName + " " + lastName + ", " + landmark
				+ ", " + street + ", " + city + ", " + pincode + ", " + state + ", "
				+ country + ", " + phone + ", " + email;
	}
	private String email;
	public String getFirstName() {
		return firstName;
	}
	public DeliveryLocation(String firstName, String lastName, String landmark, String street, String city,
			String pincode, String state, String country, String phone, String email) {
		super();
		this.firstName = firstName;
		this.lastName = lastName;
		this.landmark = landmark;
		this.street = street;
		this.city = city;
		this.pincode = pincode;
		this.state = state;
		this.country = country;
		this.phone = phone;
		this.email = email;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getLandmark() {
		return landmark;
	}
	public void setLandmark(String landmark) {
		this.landmark = landmark;
	}
	public String getStreet() {
		return street;
	}
	public void setStreet(String street) {
		this.street = street;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getPincode() {
		return pincode;
	}
	public void setPincode(String pincode) {
		this.pincode = pincode;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	
	
	
	
}
