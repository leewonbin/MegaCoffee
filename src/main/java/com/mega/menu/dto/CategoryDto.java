package com.mega.menu.dto;

public class CategoryDto {

	private int category_id;
	private String category_name;
	private String category_del = "N";

	public CategoryDto() {

	}

	public int getCategory_id() {
		return category_id;
	}

	public void setCategory_id(int category_id) {
		this.category_id = category_id;
	}

	public String getCategory_name() {
		return category_name;
	}

	public void setCategory_name(String category_name) {
		this.category_name = category_name;
	}

	public String getCategory_del() {
		return category_del;
	}

	public void setCategory_del(String category_del) {
		this.category_del = category_del;
	}

	public CategoryDto(int category_id, String category_name, String category_del) {
		super();
		this.category_id = category_id;
		this.category_name = category_name;
		this.category_del = category_del;
	}

	@Override
	public String toString() {
		return "CategoryDto [category_id=" + category_id + ", category_name=" + category_name + ", category_del="
				+ category_del + "]";
	}

}
