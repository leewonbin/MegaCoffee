package com.mega.admin.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.mega.admin.dto.AdminDto;
import com.mega.admin.service.AdminService;
import com.mega.menu.dto.AllergenDto;
import com.mega.menu.dto.MenuDto;
import com.mega.menu.dto.MenuNutrientDto;
import com.mega.menu.dto.TypeDto;
import com.mega.menu.service.MenuService;

@Controller
@RequestMapping("/admin")
public class AdminController {

	@Autowired
	private AdminService adminService;

	@Autowired
	private MenuService menuService;

	@GetMapping("/main")
	public String moveAdminPage() throws Exception {
		return "redirect:/admin/product";
	}

	@GetMapping("/moveLogin")
	public String moveLoginPage() throws Exception {
		return "/admin/adminLogin";
	}

	@GetMapping("/moveInsert")
	public String moveInsert(Model model) throws Exception {
		model.addAttribute("typeList", menuService.getTypeList());
		model.addAttribute("allergenList", menuService.getAllegenList());
		return "/admin/productInsert";
	}

	@GetMapping("/moveModify")
	public String moveModify(@RequestParam("menu_id") int menu_id, Model model) throws Exception {
		MenuNutrientDto mnDto = menuService.getMenuNutrient(menu_id);
		List<TypeDto> typeList = menuService.getType(menu_id);
		List<AllergenDto> allergenList = menuService.getAllergen(menu_id);

		model.addAttribute("mnDto", mnDto);
		model.addAttribute("selectTypeList", typeList);
		model.addAttribute("selectAllergenList", allergenList);

		model.addAttribute("typeList", menuService.getTypeList());
		model.addAttribute("allergenList", menuService.getAllegenList());
		return "/admin/productModify";
	}

	@GetMapping("/moveMenu")
	public String moveMenu(@RequestParam("category") String category) throws Exception {
		return "redirect:/admin/" + category;
	}

	@GetMapping("/product")
	public String moveProduct(Model model) throws Exception {
		List<MenuDto> menuList = menuService.menuList();
		model.addAttribute("menuList", menuList);
		return "/admin/product";
	}

	@GetMapping("/allergen")
	public String moveallergen(Model model) throws Exception {
		List<AllergenDto> allergenList = menuService.getAllegenList();
		model.addAttribute("allergenList", allergenList);
		return "/admin/allergen";
	}

	@GetMapping("/productDetail")
	public String movePDetail(@RequestParam("menu_id") int menu_id, Model model) throws Exception {
		MenuNutrientDto mnDto = menuService.getMenuNutrient(menu_id);
		List<TypeDto> typeList = menuService.getType(menu_id);
		List<AllergenDto> allergenList = menuService.getAllergen(menu_id);
		model.addAttribute("mnDto", mnDto);
		model.addAttribute("typeList", typeList);
		model.addAttribute("allergenList", allergenList);
		return "/admin/productDetail";
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

	@PostMapping("/productInsert")
	public String productInsert(MenuNutrientDto mnDto) throws Exception {
		System.out.println(mnDto);
		System.out.println(mnDto.getType_id().toString());
		System.out.println(mnDto.getAll_id().toString());
		return "redirect:/amdin/main";
	}
}
