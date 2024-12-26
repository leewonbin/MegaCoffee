package com.mega.board.mappers;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.mega.board.dto.BoardCategoryDto;
import com.mega.board.dto.BoardDto;
import com.mega.board.dto.MoveDto;
import com.mega.board.dto.PageDto;

@Mapper
public interface BoardMapper {
	//게시글 작성
	public int saveBoard(BoardDto boardDto);
	
	//게시글 조회
	public List<BoardDto> boardList(PageDto pageDto, @Param("CATEGORY_ID")Integer category_id,@Param("searchType")String searchType,@Param("keyword")String keyword);
	
	//공지사항
	public List<BoardDto>notice();
		
	//게시글 갯수
	int countBoard(@Param("CATEGORY_ID") Integer category_id);

	//게시글 상세 페이지
	public BoardDto boardDetail(int boardId);
	
	//조회수
	public void boardHit(int hits);
	
	//카테고리
	public List<BoardCategoryDto>boardCategoryList(BoardCategoryDto boardCategoryDto);
	
	//이전글,다음글
	public MoveDto movePage(int board_id, @Param("CATEGORY_ID")Integer category_id);
		
	//검색
	public int selectSearchCount(@Param("searchType")String searchType,@Param("keyword")String keyword,@Param("CATEGORY_ID")Integer category_id);
	
	
}
