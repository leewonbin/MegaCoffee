package com.mega.menu.dto;

public class AllergenDto {

	private int all_id;
	private String all_name;
	private String all_del = "N";

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

	public String getAll_del() {
		return all_del;
	}

	public void setAll_del(String all_del) {
		this.all_del = all_del;
	}

	public AllergenDto(int all_id, String all_name, String all_del) {
		super();
		this.all_id = all_id;
		this.all_name = all_name;
		this.all_del = all_del;
	}

	@Override
	public String toString() {
		return "AllergenDto [all_id=" + all_id + ", all_name=" + all_name + ", all_del=" + all_del + "]";
	}

}
