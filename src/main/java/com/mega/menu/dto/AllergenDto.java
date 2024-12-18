package com.mega.menu.dto;

public class AllergenDto {

	private int all_id;
	private String all_name;

	public AllergenDto() {

	}

	public int getAll_id() {
		return all_id;
	}

	public void setAll_id(int all_id) {
		this.all_id = all_id;
	}

	public String getAll_name() {
		return all_name;
	}

	public void setAll_name(String all_name) {
		this.all_name = all_name;
	}

	public AllergenDto(int all_id, String all_name) {
		super();
		this.all_id = all_id;
		this.all_name = all_name;
	}

	@Override
	public String toString() {
		return "AllergenDto [all_id=" + all_id + ", all_name=" + all_name + ", all_del=" + "]";
	}

}
