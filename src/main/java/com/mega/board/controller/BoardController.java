package com.mega.board.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mega.board.dto.BoardDto;
import com.mega.board.dto.PageDto;
import com.mega.board.service.BoardService;

@Controller
public class BoardController {
	
	@Autowired
	private BoardService boardService;
	
	//메인화면
	@GetMapping("/tables")
	public String boardList(PageDto pageDto
							,Model model
							,@RequestParam(value="nowPage",required = false)String nowPage
							,@RequestParam(value="cntPerPage",required = false)String cntPerPage
							,@RequestParam(defaultValue = "title")String bbs_search_category
							,@RequestParam(defaultValue = "")String bbs_search) {
		int total = boardService.countBoard();
		
		if (nowPage == null && cntPerPage == null) {
    		nowPage = "1";
    		cntPerPage = "10";
    	} else if (nowPage == null) {
    		nowPage = "1";
    	} else if (cntPerPage == null) { 
    		cntPerPage = "10";
    	}
		pageDto = new PageDto(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
		System.out.println("시작: "+pageDto.getStartPage());
    	System.out.println("끝: "+pageDto.getEndPage());
		model.addAttribute("paging", pageDto);
		model.addAttribute("boardList",boardService.boardList(pageDto));
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
	public String boardDeatil(@RequestParam(value="id",required = false) int boardId, Model model) {
		BoardDto boardDto = boardService.boardDetail(boardId);
		System.out.println("게시글 ID: "+boardDto.getBoardId());
		System.out.println("제목: "+boardDto.getTitle());
		System.out.println("내용: "+boardDto.getContent());
		System.out.println("카테고리Id: "+boardDto.getCategory_id());
		model.addAttribute("boardDetail", boardDto);
		return "board/boardDetail";
	}
	
	
}
