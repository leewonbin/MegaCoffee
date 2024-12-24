package com.mega.board.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Transactional;

import com.mega.board.dto.BoardCategoryDto;
import com.mega.board.dto.BoardDto;
import com.mega.board.dto.MoveDto;
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
	 public List<BoardDto> boardList(PageDto pageDto,String searchType,String keyword){
	     return boardMapper.boardList(pageDto,searchType,keyword);
	}
	
	//게시글 갯수
    public int countBoard(String searchType,String keyword) {
    	return boardMapper.countBoard(searchType,keyword);
    }
    
 // 카테고리별 게시글 조회
    public List<BoardDto> boardListByCategory(PageDto pageDto, int category_id,String searchType,String keyword){
        return boardMapper.boardListByCategory(pageDto, category_id,searchType,keyword);
    }

    // 카테고리별 게시글 총 개수
    public int countBoardByCategory(int category_id,String searchType,String keyword) {
        return boardMapper.countBoardByCategory(category_id,searchType,keyword);
    }
    
    //게시글 상세페이지
    @Transactional(isolation = Isolation.READ_COMMITTED)
    public BoardDto boardDetail(int boardId) {
    		boardMapper.boardHit(boardId);
    	return boardMapper.boardDetail(boardId);
    }
    
    //카테고리
    public List<BoardCategoryDto>boardCategoryList(BoardCategoryDto boardCategoryDto) {
		return boardMapper.boardCategoryList(boardCategoryDto);
	}
    
    //이전글 다음글
    public MoveDto movePageO(int boardId,int category_id) {
    	return boardMapper.movePageO(boardId,category_id);
    }
    
    public MoveDto movePageX(int boardId) {
    	return boardMapper.movePageX(boardId);
    }
    
    public ArrayList<BoardDto> selectSearch(PageDto pageDto,String searchType,String keyword)throws Exception {
    	int allCount= boardMapper.selectSearchCount(searchType, keyword);
    	System.out.println("ssssss: "+allCount);
    	return boardMapper.selectSearch(keyword,searchType,pageDto);
    }
    //public int 
    
   
    
    
    
}
