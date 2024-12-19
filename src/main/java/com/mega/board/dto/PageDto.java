package com.mega.board.dto;


public class PageDto {
	
	 private int nowPage; //현재페이지
	 private int startPage; //시작
	 private int endPage; //끝
	 private int cntPerPage = 10; //페이지당 글 갯수
	 private int lastPage; //마지막 페이지
	 private int total; //게시글 총 갯수
	 private boolean prev; 
	 private boolean next;
	 private int displayPage = 4; //보여줄 페이지의 갯수
	 //쿼리에 쓸 start,end
	 private int start;
	 private int end;
	 
	 private int group;
	 
	 
	 public PageDto() {
		
	}
	 public PageDto(int total, int nowPage, int cntPerPage) {
			setNowPage(nowPage);
			setCntPerPage(cntPerPage);
			setTotal(total);
			calcGroup(getNowPage(), getDisplayPage());
			calcLastPage(getTotal(), getCntPerPage());
			calcStartEndPage(getNowPage(), displayPage,getGroup());
			calcStartEnd(getNowPage(), getCntPerPage());
			
		}
	 //그룹 계산
	 public void calcGroup(int nowPage,int displayPage) {
		 setGroup((int) Math.ceil((double)nowPage/(double)displayPage)); // 7 / 6 = 2
	 }
	 
	 public PageDto(int total,int cntPerPage) {
		 setNowPage(nowPage);
		 setCntPerPage(cntPerPage);
		 
	 }
	 
	 // 제일 마지막 페이지 계산(전체갯수/페이지당 글 갯수)
	 //페이징 전체 마지막 갯수 
	 public void calcLastPage(int total, int cntPerPage) {
		 setLastPage((int) Math.ceil((double)total / (double)cntPerPage));
	 }
	 // 시작, 끝 페이지 계산
	 //Math.ceil -> 소수점 버리기
	 public void calcStartEndPage(int nowPage, int displayPage,int group) { // 7/6*6=7
		setEndPage((int)Math.ceil(( (double)nowPage / (double)displayPage)) * displayPage);
		if (getLastPage() < getEndPage()) {
			setEndPage(getLastPage());
		}
		setStartPage((getGroup() - 1) * displayPage + 1);

		if (getStartPage() < 1) {
			setStartPage(1);
		 }
	 }
	 // DB 쿼리에서 사용할 start, end값 계산
	 public void calcStartEnd(int nowPage, int cntPerPage) {
		setEnd(nowPage * cntPerPage);
		setStart(getEnd() - cntPerPage + 1);
	 }
	public int getNowPage() {
		return nowPage;
	}
	public void setNowPage(int nowPage) {
		this.nowPage = nowPage;
	}
	public int getStartPage() {
		return startPage;
	}
	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}
	public int getEndPage() {
		return endPage;
	}
	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}
	public int getCntPerPage() {
		return cntPerPage;
	}
	public void setCntPerPage(int cntPerPage) {
		this.cntPerPage = cntPerPage;
	}
	public int getLastPage() {
		return lastPage;
	}
	public void setLastPage(int lastPage) {
		this.lastPage = lastPage;
	}
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	public boolean isPrev() {
		return prev;
	}
	public void setPrev(boolean prev) {
		this.prev = prev;
	}
	public boolean isNext() {
		return next;
	}
	public void setNext(boolean next) {
		this.next = next;
	}
	public int getDisplayPage() {
		return displayPage;
	}
	public void setDisplayPage(int displayPage) {
		this.displayPage = displayPage;
	}
	public int getStart() {
		return start;
	}
	public void setStart(int start) {
		this.start = start;
	}
	public int getEnd() {
		return end;
	}
	public void setEnd(int end) {
		this.end = end;
	}
	public int getGroup() {
		return group;
	}
	public void setGroup(int group) {
		this.group = group;
	}
	
}
