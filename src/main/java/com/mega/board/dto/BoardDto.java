package com.mega.board.dto;

import java.time.LocalDate;

public class BoardDto {
	private int board_id;
	private String title;
	private String content;
	private String writer;
	private String separation;
	private LocalDate upload_at;
	private LocalDate delete_at;
	private String del_yn;
	private int hits;
	private int admin_num;
	private int category_id;
	
	public BoardDto() {
		
	}
	
	public BoardDto(int board_id, String title, String content, String separation, LocalDate upload_at,
			LocalDate delete_at, String del_yn, int hits, int admin_num, int category_id,String writer) {
		super();
		this.board_id = board_id;
		this.title = title;
		this.content = content;
		this.separation = separation;
		this.upload_at = upload_at;
		this.delete_at = delete_at;
		this.del_yn = del_yn;
		this.hits = hits;
		this.admin_num = admin_num;
		this.category_id = category_id;
		this.writer = writer;
	}

	public int getBoardId() {
		return board_id;
	}
	public void setBoardId(int board_id) {
		this.board_id = board_id;
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
	public LocalDate getUpload_at() {
	    return upload_at;
	}

	public void setUpload_at(LocalDate upload_at) {
	    this.upload_at = upload_at;
	}
	public LocalDate getDeleteAt() {
		return delete_at;
	}
	public void setDeleteAt(LocalDate delete_at) {
		this.delete_at = delete_at;
	}
	public String getDelYN() {
		return del_yn;
	}
	public void setDelYN(String del_yn) {
		this.del_yn = del_yn;
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

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}
	
	
	
}
