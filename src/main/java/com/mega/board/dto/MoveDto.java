package com.mega.board.dto;

public class MoveDto {
	private int next;
	private int last;
	private String nextTitle;
	private String lastTitle;
	
	public int getNext() {
		return next;
	}
	public void setNext(int next) {
		this.next = next;
	}
	public int getLast() {
		return last;
	}
	public void setLast(int last) {
		this.last = last;
	}
	public String getNextTitle() {
		return nextTitle;
	}
	public void setNextTitle(String nextTitle) {
		this.nextTitle = nextTitle;
	}
	public String getLastTitle() {
		return lastTitle;
	}
	public void setLastTitle(String lastTitle) {
		this.lastTitle = lastTitle;
	}
	
	public MoveDto(int next, int last, String nextTitle, String lastTitle) {
		super();
		this.next = next;
		this.last = last;
		this.nextTitle = nextTitle;
		this.lastTitle = lastTitle;
	}
	
	
	
	
	
	
}
