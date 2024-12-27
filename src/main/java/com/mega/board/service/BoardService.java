package com.mega.board.service;

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
	public boolean saveWrite(BoardDto boardDto) {
		System.out.println("1: "+boardDto.getAdmin_num());
		System.out.println("2: "+boardDto.getCategory_id());
		System.out.println("3: "+boardDto.getContent());
		System.out.println("4: "+boardDto.getTitle());
		System.out.println("5: "+boardDto.getWriter());
		System.out.println("6: "+boardDto.getSeparation());
		boolean success = boardMapper.saveBoard(boardDto);
		return success;
	}
	
	//게시글 갯수
	public int countBoard(Integer category_id) {
		return boardMapper.countBoard(category_id);
	}
	
	//게시글 조회
	public List<BoardDto> boardList(PageDto pageDto, Integer category_id,String searchType,String keyword){
	     return boardMapper.boardList(pageDto, category_id,searchType,keyword);
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
    public MoveDto movePage(int boardId,Integer category_id) {
    	return boardMapper.movePage(boardId,category_id);
    }

    //
    public int selectSearchCount(String searchType,String keyword,Integer category_id) {
    	return boardMapper.selectSearchCount(searchType, keyword, category_id);
    }
    
    //공지사항
    public List<BoardDto>notice(){
    	return boardMapper.notice();
    }    
}
