package com.beans;

public class MenuItem {
	private int id;
	private String name;
	private String description;
	private	float price;
	private String image;
	public MenuItem(){}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	@Override
	public String toString() {
		return "Menu [id=" + id + ", name=" + name + ", description=" + description + ", price=" + price + ", image="
				+ image + "]";
	}
	public MenuItem(int id, String name, String description, float price, String image) {
		super();
		this.id = id;
		this.name = name;
		this.description = description;
		this.price = price;
		this.image = image;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public boolean equals(Object obj)
	{
		if(obj==this)
			return true;
		if(!(obj instanceof MenuItem))
			return false;
		MenuItem menu=(MenuItem)obj;
		if(menu.id==id && menu.name.equals(name) && menu.description.equals(description) && menu.price==price && menu.image.equals(image))
			return true;
		else
			return false;	
	}
	public int hashcode()
	{
		return id*100;
		
	}
	
}
