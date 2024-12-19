package com.mega.menu.dto;

public class MenuNutrientDto {
	private int menu_id;
	private String menu_title;
	private String menu_eng_title;
	private String menu_content;
	private String menu_del;
	private String menu_ice_hot;
	private String menu_onesize;
	private String menu_file_id;
	private double nut_saturated;
	private double nut_sugar;
	private double nut_sodium;
	private double nut_protein;
	private double nut_caffeine;
	private double nut_calorie;
	private String nut_hight_caffeine;
	private int nut_size;
	private String nut_unit;

	public MenuNutrientDto() {
		// TODO Auto-generated constructor stub
	}

	public MenuNutrientDto(int menu_id, String menu_title, String menu_eng_title, String menu_content, String menu_del,
			String menu_ice_hot, String menu_onesize, String menu_file_id, double nut_saturated, double nut_sugar,
			double nut_sodium, double nut_protein, double nut_caffeine, double nut_calorie, String nut_hight_caffeine,
			int nut_size, String nut_unit) {
		super();
		this.menu_id = menu_id;
		this.menu_title = menu_title;
		this.menu_eng_title = menu_eng_title;
		this.menu_content = menu_content;
		this.menu_del = menu_del;
		this.menu_ice_hot = menu_ice_hot;
		this.menu_onesize = menu_onesize;
		this.menu_file_id = menu_file_id;
		this.nut_saturated = nut_saturated;
		this.nut_sugar = nut_sugar;
		this.nut_sodium = nut_sodium;
		this.nut_protein = nut_protein;
		this.nut_caffeine = nut_caffeine;
		this.nut_calorie = nut_calorie;
		this.nut_hight_caffeine = nut_hight_caffeine;
		this.nut_size = nut_size;
		this.nut_unit = nut_unit;
	}

	@Override
	public String toString() {
		return "MenuNutrientDto [menu_id=" + menu_id + ", menu_title=" + menu_title + ", menu_eng_title="
				+ menu_eng_title + ", menu_content=" + menu_content + ", menu_del=" + menu_del + ", menu_ice_hot="
				+ menu_ice_hot + ", menu_onesize=" + menu_onesize + ", menu_file_id=" + menu_file_id
				+ ", nut_saturated=" + nut_saturated + ", nut_sugar=" + nut_sugar + ", nut_sodium=" + nut_sodium
				+ ", nut_protein=" + nut_protein + ", nut_caffeine=" + nut_caffeine + ", nut_calorie=" + nut_calorie
				+ ", nut_hight_caffeine=" + nut_hight_caffeine + ", nut_size=" + nut_size + ", nut_unit=" + nut_unit
				+ "]";
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

	public double getNut_saturated() {
		return nut_saturated;
	}

	public void setNut_saturated(double nut_saturated) {
		this.nut_saturated = nut_saturated;
	}

	public double getNut_sugar() {
		return nut_sugar;
	}

	public void setNut_sugar(double nut_sugar) {
		this.nut_sugar = nut_sugar;
	}

	public double getNut_sodium() {
		return nut_sodium;
	}

	public void setNut_sodium(double nut_sodium) {
		this.nut_sodium = nut_sodium;
	}

	public double getNut_protein() {
		return nut_protein;
	}

	public void setNut_protein(double nut_protein) {
		this.nut_protein = nut_protein;
	}

	public double getNut_caffeine() {
		return nut_caffeine;
	}

	public void setNut_caffeine(double nut_caffeine) {
		this.nut_caffeine = nut_caffeine;
	}

	public double getNut_calorie() {
		return nut_calorie;
	}

	public void setNut_calorie(double nut_calorie) {
		this.nut_calorie = nut_calorie;
	}

	public String getNut_hight_caffeine() {
		return nut_hight_caffeine;
	}

	public void setNut_hight_caffeine(String nut_hight_caffeine) {
		this.nut_hight_caffeine = nut_hight_caffeine;
	}

	public int getNut_size() {
		return nut_size;
	}

	public void setNut_size(int nut_size) {
		this.nut_size = nut_size;
	}

	public String getNut_unit() {
		return nut_unit;
	}

	public void setNut_unit(String nut_unit) {
		this.nut_unit = nut_unit;
	}

}
