package com.mega.board.mappers;

import java.util.ArrayList;
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
	
	//페이징 처리 게시글 조회
	public List<BoardDto> boardList(PageDto pageDto,String searchType,String keyword);
		
	//게시글 총 갯수
	public int countBoard();
	
	// 카테고리별 페이징 처리 게시글 조회
	public List<BoardDto> boardListByCategory(PageDto pageDto, int category_id,@Param("searchType")String searchType,@Param("keyword")String keyword);

	// 카테고리별 게시글 총 갯수
	public int countBoardByCategory( int category_id);
	
	//게시글 상세 페이지
	public BoardDto boardDetail(int boardId);
	
	//조회수
	public void boardHit(int hits);
	
	//카테고리
	public List<BoardCategoryDto>boardCategoryList(BoardCategoryDto boardCategoryDto);
	
	//이전글 다음글
	public MoveDto movePageO(int board_id,int category_id);
	
	public MoveDto movePageX(int board_id);
		
	public ArrayList<BoardDto> selectSearch(@Param("searchType")String searchType,@Param("keyword")String keyword,PageDto pageDto) throws Exception; 
	
	 public int selectSearchCount(@Param("searchType")String searchType,@Param("keyword")String keyword,int category_id);
	 
	 public int selectSearchCountAll(@Param("searchType")String searchType,@Param("keyword")String keyword);
	
}
