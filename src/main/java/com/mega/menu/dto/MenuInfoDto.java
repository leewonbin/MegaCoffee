package com.mega.menu.dto;

public class MenuInfoDto {

	private MenuDto menuDto; // 기존 메뉴 정보
	private NutrientDto nutrientDto; // 영양 성분
	// private List<AllergenDto> allergens; // 알레르기

	public MenuInfoDto() {
	}

	public MenuInfoDto(MenuDto menuDto) {
		this.menuDto = menuDto;
	}

	public MenuInfoDto(NutrientDto nutrientDto) {
		this.nutrientDto = nutrientDto;
	}
//-----------------------------------------------------------------------------------------
	public MenuDto getMenuDto() {
		return menuDto;
	}

	public void setMenuDto(MenuDto menuDto) {
		this.menuDto = menuDto;
	}

	public NutrientDto getNutrientDto() {
		return nutrientDto;
	}

	public void setNutrientDto(NutrientDto nutrientDto) {
		this.nutrientDto = nutrientDto;
	}

	public MenuInfoDto(MenuDto menuDto, NutrientDto nutrientDto) {
		super();
		this.menuDto = menuDto;
		this.nutrientDto = nutrientDto;
	}

	@Override
	public String toString() {
		return "MenuInfoDto [menuDto=" + menuDto + ", nutrientDto=" + nutrientDto + "]";
	}

}
