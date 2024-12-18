package com.mega.board.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mega.board.dto.BoardDto;
import com.mega.board.mappers.BoardMapper;
import com.mega.page.dto.PageDto;

@Service
public class BoardService {
	
	@Autowired
	private BoardMapper boardMapper;

	//게시글 저장
	public void saveWrite(BoardDto boardDto) {
		boardMapper.saveBoard(boardDto);
	}
	
    //게시글 조회
	 public List<BoardDto> boardList(PageDto pageDto){
	     return boardMapper.boardList(pageDto);
		}
	
	//게시글 갯수
    public int countBoard() {
    	return boardMapper.countBoard();
    }
}
