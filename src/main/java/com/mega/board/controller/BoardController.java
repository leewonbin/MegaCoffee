package com.mega.board.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
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
		
	    if(keyword != null && searchType != null) {
	        total = boardService.selectSearchCount(searchType, keyword,category_id);   	
	    }
	    else {
		   total = boardService.countBoard(category_id);		       
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

	    List<BoardDto> boardList;
	    List<BoardCategoryDto> boardCategoryList;
	    boardList = boardService.boardList(pageDto, category_id,searchType,keyword);
	        
	    boardCategoryList = boardService.boardCategoryList(boardCategoryDto);
	    model.addAttribute("notice", boardService.notice());
	    model.addAttribute("paging", pageDto);
	    model.addAttribute("categoryList",boardCategoryList);
	    model.addAttribute("boardList", boardList);
	    model.addAttribute("CATEGORY_ID", category_id);
	    model.addAttribute("keyword",keyword);
	    return "board/board";
	}
	
	//게시글 작성 페이지 이동
	@GetMapping("/boardwrite")
	public String boardWrite(BoardCategoryDto boardCategoryDto,Model model) {
		 List<BoardCategoryDto>boardCategoryList = boardService.boardCategoryList(boardCategoryDto);
		 model.addAttribute("categoryList",boardCategoryList);
		return "board/boardwrite";
	}
	
	//게시글 작성 
	@PostMapping("/boardwrite")
	@ResponseBody
	public Map<String, Object>saveWrite(@ModelAttribute BoardDto boardDto,Model model) {
		 System.out.println("제목: "+boardDto.getTitle());
         System.out.println("내용: "+boardDto.getContent());
         System.out.println("카테고리ID: "+boardDto.getCategory_id());
         System.out.println("구분: "+boardDto.getSeparation());
         
         int adminId = 1;
         String writer = "어드민";
         String del = "N";
         boardDto.setAdmin_num(adminId);
         boardDto.setWriter(writer);
         boardDto.setDelYN(del);
         Map<String, Object> result = new HashMap<String,Object>();
         boolean success = boardService.saveWrite(boardDto);
         result.put("data", success);
         model.addAttribute("board",boardDto);
		return result;
	}
	
	//게시글 상세 페이지
	@GetMapping("/boardDetail")
	public String boardDeatil(@RequestParam(value="id",required = false) int boardId,
							  @RequestParam(value = "CATEGORY_ID", required = false) Integer category_id, 
							  Model model) {
		
		BoardDto boardDto = boardService.boardDetail(boardId);
		MoveDto moveDto = boardService.movePage(boardId, category_id);
		model.addAttribute("boardDetail", boardDto);
		model.addAttribute("move",moveDto); 		
		return "board/boardDetail";
	}
	
	
}
