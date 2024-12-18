package com.mega.menu.dto;

public class TypeDto {

	private int type_id;
	private String type_name;
	private String type_del = "N";

	public TypeDto() {

	}

	public int getType_id() {
		return type_id;
	}

	public void setType_id(int type_id) {
		this.type_id = type_id;
	}

	public String getType_name() {
		return type_name;
	}

	public void setType_name(String type_name) {
		this.type_name = type_name;
	}

	public String getType_del() {
		return type_del;
	}

	public void setType_del(String type_del) {
		this.type_del = type_del;
	}

	public TypeDto(int type_id, String type_name, String type_del) {
		super();
		this.type_id = type_id;
		this.type_name = type_name;
		this.type_del = type_del;
	}

	@Override
	public String toString() {
		return "TypeDto [type_id=" + type_id + ", type_name=" + type_name + ", type_del=" + type_del + "]";
	}

}
