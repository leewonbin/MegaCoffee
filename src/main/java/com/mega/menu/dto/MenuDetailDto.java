package com.mega.menu.dto;

import java.util.List;

public class MenuDetailDto {

	private MenuDto menu; 					// 기존 메뉴 정보
	private NutrientDto nutrient; 			// 영양 성분
	private List<AllergenDto> allergens; 	// 알레르기

	public MenuDto getMenu() {
		return menu;
	}

	public NutrientDto getNutrient() {
		return nutrient;
	}

	public void setNutrient(NutrientDto nutrient) {
		this.nutrient = nutrient;
	}

	public List<AllergenDto> getAllergens() {
		return allergens;
	}

	public void setAllergens(List<AllergenDto> allergens) {
		this.allergens = allergens;
	}

	public void setMenu(MenuDto menu) {
		this.menu = menu;
	}

	public MenuDetailDto(MenuDto menu, NutrientDto nutrient, List<AllergenDto> allergens) {
		super();
		this.menu = menu;
		this.nutrient = nutrient;
		this.allergens = allergens;
	}

	@Override
	public String toString() {
		return "MenuDetailDto [menu=" + menu + ", nutrient=" + nutrient + ", allergens=" + allergens + "]";
	}

}
