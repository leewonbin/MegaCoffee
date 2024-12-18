package com.mega.board.mappers;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.mega.board.dto.BoardDto;
import com.mega.page.dto.PageDto;

@Mapper
public interface BoardMapper {
	//게시글 작성
	public int saveBoard(BoardDto boardDto);
	
	//페이징 처리 게시글 조회
	public List<BoardDto> boardList(PageDto pageDto);
	
	
	//게시글 총 갯수
	public int countBoard();
}
