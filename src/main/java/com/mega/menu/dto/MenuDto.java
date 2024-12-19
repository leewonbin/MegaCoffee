package com.mega.menu.dto;

import java.time.LocalDate;

public class MenuDto {

	private int menu_id;
	private String menu_title;
	private String menu_eng_title;
	private String menu_content;
	private LocalDate menu_date;
	private LocalDate menu_update;
	private String menu_del = "N";
	private String menu_ice_hot;
	private String menu_onesize = "N";
	private String menu_file_id;
	private int admin_num;
	private int category_id;

	public MenuDto() {
	}

	public int getMenu_id() {
		return menu_id;
	}

	public void setMenu_id(int menu_id) {
		this.menu_id = menu_id;
	}

	public String getMenu_title() {
		return menu_title;
	}

	public void setMenu_title(String menu_title) {
		this.menu_title = menu_title;
	}

	public String getMenu_eng_title() {
		return menu_eng_title;
	}

	public void setMenu_eng_title(String menu_eng_title) {
		this.menu_eng_title = menu_eng_title;
	}

	public String getMenu_content() {
		return menu_content;
	}

	public void setMenu_content(String menu_content) {
		this.menu_content = menu_content;
	}

	public LocalDate getMenu_date() {
		return menu_date;
	}

	public void setMenu_date(LocalDate menu_date) {
		this.menu_date = menu_date;
	}

	public LocalDate getMenu_update() {
		return menu_update;
	}

	public void setMenu_update(LocalDate menu_update) {
		this.menu_update = menu_update;
	}

	public String getMenu_del() {
		return menu_del;
	}

	public void setMenu_del(String menu_del) {
		this.menu_del = menu_del;
	}

	public String getMenu_ice_hot() {
		return menu_ice_hot;
	}

	public void setMenu_ice_hot(String menu_ice_hot) {
		this.menu_ice_hot = menu_ice_hot;
	}

	public String getMenu_onesize() {
		return menu_onesize;
	}

	public void setMenu_onesize(String menu_onesize) {
		this.menu_onesize = menu_onesize;
	}

	public String getMenu_file_id() {
		return menu_file_id;
	}

	public void setMenu_file_id(String menu_file_id) {
		this.menu_file_id = menu_file_id;
	}

	public int getAdmin_num() {
		return admin_num;
	}

	public void setAdmin_num(int admin_num) {
		this.admin_num = admin_num;
	}

	public int getCategory_id() {
		return category_id;
	}

	public void setCategory_id(int category_id) {
		this.category_id = category_id;
	}

	public MenuDto(int menu_id, String menu_title, String menu_eng_title, String menu_content, LocalDate menu_date,
			LocalDate menu_update, String menu_del, String menu_ice_hot, String menu_onesize, String menu_file_id,
			int admin_num, int category_id) {
		super();
		this.menu_id = menu_id;
		this.menu_title = menu_title;
		this.menu_eng_title = menu_eng_title;
		this.menu_content = menu_content;
		this.menu_date = menu_date;
		this.menu_update = menu_update;
		this.menu_del = menu_del;
		this.menu_ice_hot = menu_ice_hot;
		this.menu_onesize = menu_onesize;
		this.menu_file_id = menu_file_id;
		this.admin_num = admin_num;
		this.category_id = category_id;
	}

	@Override
	public String toString() {
		return "MenuDto [menu_id=" + menu_id + ", menu_title=" + menu_title + ", menu_eng_title=" + menu_eng_title
				+ ", menu_content=" + menu_content + ", menu_date=" + menu_date + ", menu_update=" + menu_update
				+ ", menu_del=" + menu_del + ", menu_ice_hot=" + menu_ice_hot + ", menu_onesize=" + menu_onesize
				+ ", menu_file_id=" + menu_file_id + ", admin_num=" + admin_num + ", category_id=" + category_id + "]";
	}

}
