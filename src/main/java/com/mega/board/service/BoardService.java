package com.mega.board.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Transactional;

import com.mega.board.dto.BoardDto;
import com.mega.board.dto.PageDto;
import com.mega.board.mappers.BoardMapper;

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
    
 // 카테고리별 게시글 조회
    public List<BoardDto> boardListByCategory(PageDto pageDto, int category_id) {
        return boardMapper.boardListByCategory(pageDto, category_id);
    }

    // 카테고리별 게시글 총 개수
    public int countBoardByCategory(int category_id) {
        return boardMapper.countBoardByCategory(category_id);
    }
    
    //게시글 상세페이지
    @Transactional(isolation = Isolation.READ_COMMITTED)
    public BoardDto boardDetail(int boardId) {
    		boardMapper.boardHit(boardId);
    	return boardMapper.boardDetail(boardId);
    }
    
    
    
}
