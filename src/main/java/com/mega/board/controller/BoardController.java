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

import com.mega.board.dto.BoardDto;
import com.mega.board.dto.PageDto;
import com.mega.board.service.BoardService;

@Controller
public class BoardController {
	
	@Autowired
	private BoardService boardService;
	
	@GetMapping("/tables")
	public String boardList(PageDto pageDto,
	                        Model model,
	                        @RequestParam(value = "nowPage", required = false) String nowPage,
	                        @RequestParam(value = "cntPerPage", required = false) String cntPerPage,
	                        @RequestParam(value = "CATEGORY_ID", required = false) Integer category_id) {
	    int total;

	    if (category_id != null) {
	        // 카테고리별 게시글 총 개수
	        total = boardService.countBoardByCategory(category_id);
	    } else {
	        // 전체 게시글 총 개수
	        total = boardService.countBoard();
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

	    // 페이지 정보 설정
	    pageDto = new PageDto(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));

	    // start와 end 계산 (MyBatis에서 필요)
	    int start = (Integer.parseInt(nowPage) - 1) * Integer.parseInt(cntPerPage) + 1;
	    int end = Integer.parseInt(nowPage) * Integer.parseInt(cntPerPage);

	    // PageDto에 start와 end 설정
	    pageDto.setStart(start);
	    pageDto.setEnd(end);

	    List<BoardDto> boardList;
	    if (category_id != null) {
	        // 카테고리별 게시글 조회
	        boardList = boardService.boardListByCategory(pageDto, category_id);
	        System.out.println("cid: "+category_id);
	    } else {
	        // 전체 게시글 조회
	        boardList = boardService.boardList(pageDto);
	    }

	    // 모델에 데이터 추가
	    model.addAttribute("paging", pageDto);
	    model.addAttribute("boardList", boardList);
	    model.addAttribute("CATEGORY_ID", category_id); // 현재 카테고리 전달
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
