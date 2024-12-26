package com.mega.board.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mega.board.dto.BoardCategoryDto;
import com.mega.board.dto.BoardDto;
import com.mega.board.dto.MoveDto;
import com.mega.board.dto.PageDto;
import com.mega.board.service.BoardService;

@Controller
public class BoardController {
	
	@Autowired
	private BoardService boardService;
	
	@GetMapping("/tables")
	public String boardList(PageDto pageDto,
							BoardCategoryDto boardCategoryDto,
	                        Model model,
	                        @RequestParam(value = "nowPage", required = false) String nowPage,
	                        @RequestParam(value = "cntPerPage", required = false) String cntPerPage,
	                        @RequestParam(value = "CATEGORY_ID", required = false) Integer category_id,
	                        @RequestParam(value = "searchType",required = false)String searchType,
	                        @RequestParam(value="keyword", required=false) String keyword) throws Exception {
	    int total;
		
	    if (category_id != null) {	       
	        if(keyword != null && searchType != null) {
	        	total = boardService.selectSearchCount(searchType, keyword,category_id);
	        }
	        else {
	        	// 카테고리별 게시글 총 개수
		        total = boardService.countBoardByCategory(category_id);
	        }       
	    }
	    else {	       
	        if(keyword != null && searchType != null) {
	        	total = boardService.selectSearchCountAll(keyword,searchType);
	        	System.out.println("total: "+total);
	        }
	        else {
	        	// 전체 게시글 총 개수
		        total = boardService.countBoard();
	        }
	        
	    }

	    // 기본값 설정
	    if (nowPage == null && cntPerPage == null) {
	        nowPage = "1";
	        cntPerPage = "10";
	    } else if (nowPage == null) {
	        nowPage = "1";
	    } else if (cntPerPage == null) {
	        cntPerPage = "10";
	    }

	    pageDto = new PageDto(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));

	    //int start = (Integer.parseInt(nowPage) - 1) * Integer.parseInt(cntPerPage) + 1;
	    //int end = Integer.parseInt(nowPage) * Integer.parseInt(cntPerPage);

	    //pageDto.setStart(start);
	    //pageDto.setEnd(end);

	    List<BoardDto> boardList;
	    List<BoardCategoryDto> boardCategoryList;
	    
	    if (category_id != null) {
	        // 카테고리별 게시글 조회
	    	if(searchType != null && keyword != null) {
	    		boardService.selectSearch(pageDto,searchType,keyword,category_id);	    		
	    		System.out.println("type1: "+searchType);
	    		System.out.println("keyword1: "+keyword);
	    		System.out.println("카테고리 있는 키워드 갯수: "+pageDto.getTotal());
	    	}
	    	
	        boardList = boardService.boardListByCategory(pageDto, category_id,searchType,keyword);
	        System.out.println("cid O: "+category_id);	        
	    } 
	    else {
	        // 전체 게시글 조회
	        boardList = boardService.boardList(pageDto,searchType,keyword);
	        System.out.println("cid x: "+category_id);
	        System.out.println("type2: "+searchType);
    		System.out.println("keyword2: "+keyword);
    		System.out.println("카테고리 없는 키워드 갯수: "+pageDto.getTotal());
	    }
	        
	    boardCategoryList = boardService.boardCategoryList(boardCategoryDto);
	    
	    model.addAttribute("paging", pageDto);
	    model.addAttribute("categoryList",boardCategoryList);
	    model.addAttribute("boardList", boardList);
	    model.addAttribute("CATEGORY_ID", category_id); 
	    return "board/board";
	}



	
	//게시글 작성 페이지 이동
	@GetMapping("/boardwrite")
	public String boardWrite() {
		return "board/boardwrite";
	}
	
	//게시글 작성 
	@PostMapping("/boardwrite")
	@ResponseBody
	public String saveWrite(@RequestBody BoardDto boardDto,Model model) {
		 System.out.println("sss: "+boardDto.toString());
		 System.out.println("제목: "+boardDto.getTitle());
         System.out.println("내용: "+boardDto.getContent());
         boardService.saveWrite(boardDto);
         model.addAttribute("board",boardDto);
		return "redirect:/main";
	}
	
	//게시글 상세 페이지
	@GetMapping("/boardDetail")
	public String boardDeatil(@RequestParam(value="id",required = false) int boardId,
							  @RequestParam(value = "CATEGORY_ID", required = false) Integer category_id, 
							  Model model
							  ) {
		
		BoardDto boardDto = boardService.boardDetail(boardId);
		System.out.println("??: "+category_id);
		System.out.println("게시글 ID: "+boardDto.getBoardId());
		System.out.println("제목: "+boardDto.getTitle());
		System.out.println("내용: "+boardDto.getContent());
		System.out.println("카테고리Id: "+boardDto.getCategory_id());
		MoveDto moveDto;
		if(category_id != null) {
			moveDto = boardService.movePageO(boardId, category_id);
		}
		else {
			moveDto = boardService.movePageX(boardId);
		}
		model.addAttribute("boardDetail", boardDto);
		model.addAttribute("move",moveDto); 
		
		return "board/boardDetail";
	}
	
	
}
