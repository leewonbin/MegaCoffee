package com.mega.board.dto;

import java.time.LocalDate;

public class BoardDto {
	private int boardId;
	private String title;
	private String content;
	//private String writer;
	private String separation;
	private LocalDate uploadAt;
	private LocalDate deleteAt;
	private String delYN;
	private int hits;
	private int admin_num;
	private int category_id;
	
	public BoardDto() {
		
	}
	
	public BoardDto(int boardId, String title, String content, String separation, LocalDate uploadAt,
			LocalDate deleteAt, String delYN, int hits, int admin_num, int category_id) {
		super();
		this.boardId = boardId;
		this.title = title;
		this.content = content;
		this.separation = separation;
		this.uploadAt = uploadAt;
		this.deleteAt = deleteAt;
		this.delYN = delYN;
		this.hits = hits;
		this.admin_num = admin_num;
		this.category_id = category_id;
	}

	public int getBoardId() {
		return boardId;
	}
	public void setBoardId(int boardId) {
		this.boardId = boardId;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getSeparation() {
		return separation;
	}
	public void setSeparation(String separation) {
		this.separation = separation;
	}
	public LocalDate getUploadAt() {
		return uploadAt;
	}
	public void setUploadAt(LocalDate uploadAt) {
		this.uploadAt = uploadAt;
	}
	public LocalDate getDeleteAt() {
		return deleteAt;
	}
	public void setDeleteAt(LocalDate deleteAt) {
		this.deleteAt = deleteAt;
	}
	public String getDelYN() {
		return delYN;
	}
	public void setDelYN(String delYN) {
		this.delYN = delYN;
	}
	public int getHits() {
		return hits;
	}
	public void setHits(int hits) {
		this.hits = hits;
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
	
	
	
}
