package com.mega.admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.mega.admin.dto.AdminDto;
import com.mega.admin.service.AdminService;

@Controller
@RequestMapping("/admin")
public class AdminController {

	@Autowired
	private AdminService adminService;

	@GetMapping("/main")
	public String moveAdminPage() throws Exception {
		return "/admin/adminMain";
	}

	@GetMapping("/moveLogin")
	public String moveLoginPage() throws Exception {
		return "/admin/adminLogin";
	}

	@GetMapping("/moveMenu")
	public String moveMenu(@RequestParam("category") String category) throws Exception {
		return "/admin/" + category;
	}

	@PostMapping("/login")
	public String loginProcess(@RequestParam("admin_id") String admin_id, @RequestParam("admin_pw") String admin_pw,
			RedirectAttributes rttr) throws Exception {
		AdminDto dto = adminService.loginProcess(admin_id, admin_pw);

		String redirectUrl = dto == null ? "redirect:/admin/moveLogin" : "redirect:/admin/main";
		String msg = dto == null ? "아이디 또는 패스워드가 일치하지 않습니다." : "로그인 되었습니다.";

		rttr.addFlashAttribute("msg", msg);
		return redirectUrl;
	}
}
