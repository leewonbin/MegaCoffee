package com.mega.menu.dto;

public class NutrientDto {

	private int nut_id;
	private int nut_saturated;
	private int nut_sugar;
	private int nut_sodium;
	private int nut_protein;
	private int nut_caffeine;
	private int nut_calorie;
	private String nut_high_caffeine = "N";
	private int nut_size;
	private String nut_unit;
	private int menu_id;

	public NutrientDto() {

	}

	public int getNut_id() {
		return nut_id;
	}

	public void setNut_id(int nut_id) {
		this.nut_id = nut_id;
	}

	public int getNut_saturated() {
		return nut_saturated;
	}

	public void setNut_saturated(int nut_saturated) {
		this.nut_saturated = nut_saturated;
	}

	public int getNut_sugar() {
		return nut_sugar;
	}

	public void setNut_sugar(int nut_sugar) {
		this.nut_sugar = nut_sugar;
	}

	public int getNut_sodium() {
		return nut_sodium;
	}

	public void setNut_sodium(int nut_sodium) {
		this.nut_sodium = nut_sodium;
	}

	public int getNut_protein() {
		return nut_protein;
	}

	public void setNut_protein(int nut_protein) {
		this.nut_protein = nut_protein;
	}

	public int getNut_caffeine() {
		return nut_caffeine;
	}

	public void setNut_caffeine(int nut_caffeine) {
		this.nut_caffeine = nut_caffeine;
	}

	public int getNut_calorie() {
		return nut_calorie;
	}

	public void setNut_calorie(int nut_calorie) {
		this.nut_calorie = nut_calorie;
	}

	public String getNut_high_caffeine() {
		return nut_high_caffeine;
	}

	public void setNut_high_caffeine(String nut_high_caffeine) {
		this.nut_high_caffeine = nut_high_caffeine;
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

	public int getMenu_id() {
		return menu_id;
	}

	public void setMenu_id(int menu_id) {
		this.menu_id = menu_id;
	}

	public NutrientDto(int nut_id, int nut_saturated, int nut_sugar, int nut_sodium, int nut_protein, int nut_caffeine,
			int nut_calorie, String nut_high_caffeine, int nut_size, String nut_unit, int menu_id) {
		super();
		this.nut_id = nut_id;
		this.nut_saturated = nut_saturated;
		this.nut_sugar = nut_sugar;
		this.nut_sodium = nut_sodium;
		this.nut_protein = nut_protein;
		this.nut_caffeine = nut_caffeine;
		this.nut_calorie = nut_calorie;
		this.nut_high_caffeine = nut_high_caffeine;
		this.nut_size = nut_size;
		this.nut_unit = nut_unit;
		this.menu_id = menu_id;
	}

	@Override
	public String toString() {
		return "NutrientDto [nut_id=" + nut_id + ", nut_saturated=" + nut_saturated + ", nut_sugar=" + nut_sugar
				+ ", nut_sodium=" + nut_sodium + ", nut_protein=" + nut_protein + ", nut_caffeine=" + nut_caffeine
				+ ", nut_calorie=" + nut_calorie + ", nut_high_caffeine=" + nut_high_caffeine + ", nut_size=" + nut_size
				+ ", nut_unit=" + nut_unit + ", menu_id=" + menu_id + "]";
	}

}
