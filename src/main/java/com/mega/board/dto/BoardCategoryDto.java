package com.mega.board.dto;

public class BoardCategoryDto {

	private int category_id;
	private String categoryNm;
	
	public int getCategory_id() {
		return category_id;
	}
	public void setCategory_id(int category_id) {
		this.category_id = category_id;
	}
	public String getCategoryNm() {
		return categoryNm;
	}
	public void setCategoryNm(String categoryNm) {
		this.categoryNm = categoryNm;
	}
	public BoardCategoryDto() {
			
	}

	public BoardCategoryDto(int category_id, String categoryNm) {
		super();
		this.category_id = category_id;
		this.categoryNm = categoryNm;
	}
	
	
	
}
