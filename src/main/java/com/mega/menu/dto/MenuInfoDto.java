package com.mega.menu.dto;

import java.util.List;
import java.util.Map;

public class MenuInfoDto {
	
	private Map<String,Object> menuNutrientDto; // 메뉴+영양성분 정보
	private List<AllergenDto> allergen; // 알레르기

	public MenuInfoDto() {
	}
	
	public MenuInfoDto(Map<String, Object> menuNutrientDto, List<AllergenDto> allergen) {
		super();
		this.menuNutrientDto = menuNutrientDto;
		this.allergen = allergen;
	}

	public Map<String, Object> getMenuNutrientDto() {
		return menuNutrientDto;
	}

	public void setMenuNutrientDto(Map<String, Object> menuNutrientDto) {
		this.menuNutrientDto = menuNutrientDto;
	}

	public List<AllergenDto> getAllergen() {
		return allergen;
	}

	public void setAllergen(List<AllergenDto> allergen) {
		this.allergen = allergen;
	}

	@Override
	public String toString() {
		return "MenuInfoDto [menuNutrientDto=" + menuNutrientDto + ", allergen=" + allergen + "]";
	}
}
