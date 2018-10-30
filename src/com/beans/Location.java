package com.beans;

public class Location {
	private String location;
	private String image;
	private int id;
	public Location(){}
	public Location(int id, String location, String image) {
		super();
		this.id = id;
		this.location = location;
		this.image = image;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getImage() {
		return image;
	}
	@Override
	public String toString() {
		return "Location [id=" + id + ", location=" + location + ", image=" + image + "]";
	}
	
	public void setImage(String image) {
		this.image = image;
	}
}
