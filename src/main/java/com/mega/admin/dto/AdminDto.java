package com.mega.admin.dto;

public class AdminDto {
	private int admin_num;
	private String admin_id;
	private String admin_pw;
	private String admin_date;
	private String admin_name;

	public AdminDto() {
	}

	public AdminDto(int admin_num, String admin_id, String admin_pw, String admin_date, String admin_name) {
		super();
		this.admin_num = admin_num;
		this.admin_id = admin_id;
		this.admin_pw = admin_pw;
		this.admin_date = admin_date;
		this.admin_name = admin_name;
	}

	public int getAdmin_num() {
		return admin_num;
	}

	public void setAdmin_num(int admin_num) {
		this.admin_num = admin_num;
	}

	public String getAdmin_id() {
		return admin_id;
	}

	public void setAdmin_id(String admin_id) {
		this.admin_id = admin_id;
	}

	public String getAdmin_pw() {
		return admin_pw;
	}

	public void setAdmin_pw(String admin_pw) {
		this.admin_pw = admin_pw;
	}

	public String getAdmin_date() {
		return admin_date;
	}

	public void setAdmin_date(String admin_date) {
		this.admin_date = admin_date;
	}

	public String getAdmin_name() {
		return admin_name;
	}

	public void setAdmin_name(String admin_name) {
		this.admin_name = admin_name;
	}

	@Override
	public String toString() {
		return "AdminDto [admin_num=" + admin_num + ", admin_id=" + admin_id + ", admin_pw=" + admin_pw
				+ ", admin_date=" + admin_date + ", admin_name=" + admin_name + "]";
	}

}
