package com.cs336.pkg;

public class Shoe {
	String brand;
	String colors;
	String name;
	String type;
	int size;
	
	Shoe(String brand, String color, String name, String type, int size) {
		this.brand = brand;
		this.colors = color;
		this.name = name;
		this.type = type;
		this.size = size;
	}
	

	public String getBrand() {
		return this.brand;
	}

	public String getColors() {
		return this.colors;
	}

	public String getName() {
		return this.name;
	}

	public String getType() {
		return this.type;
	}

	public void setBrand(String brand) {
		this.brand = brand;
	}

	public void setColors(String colors) {
		this.colors = colors;
	}

	public void setName(String name) {
		this.name = name;
	}

	public void setType(String type) {
		this.type = type;
	}

	public int getSize() {
		return this.size;
	}

}
